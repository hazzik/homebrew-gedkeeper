cask "gedkeeper3" do
  version "3.12.0"
  sha256 "3e66215e67e1eb28b2bc0dce9542ae465946a2251d29c4870d70ca13cce65f9c"

  url "https://github.com/Serg-Norseman/GEDKeeper/releases/download/v#{version}/gedkeeper_#{version}.dmg"
  name "GEDKeeper"
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
