cask "gedkeeper3" do
  version "3.15.0"
  sha256 "17dd03681f1f8b759f7b321efaf6fb8fb11be1415fafa811df6ca339d69e40af"

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
