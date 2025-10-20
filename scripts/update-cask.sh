#!/bin/bash

set -e

if [ -z "$LATEST_VERSION" ] || [ -z "$SHA256" ]; then
  echo "Error: LATEST_VERSION and SHA256 must be set"
  exit 1
fi

echo "Updating cask file for version $LATEST_VERSION"

cat > Casks/gedkeeper3.rb <<-EOF
  cask "gedkeeper3" do
    version "$LATEST_VERSION"
    sha256 "$SHA256"

    url "https://github.com/Serg-Norseman/GEDKeeper/releases/download/v#{version}/gedkeeper_#{version}.dmg"

    name "GEDKeeper3"
    desc "Program for working with personal genealogical databases"
    homepage "https://github.com/Serg-Norseman/GEDKeeper"

    # Install the .app bundle into /Applications
    app "GEDKeeper3.app"

    # Optional: zap/uninstall stanza if needed
    uninstall quit: "org.gedkeeper.GEDKeeper"
    zap       trash: [
      # "~/Library/Application Support/GEDKeeper",
      # "~/Library/Preferences/org.gedkeeper.GEDKeeper.plist",
    ]
  end
EOF

echo "Cask file updated successfully"