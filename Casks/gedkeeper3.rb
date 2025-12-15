cask "gedkeeper3" do
  version "3.13.0"
  sha256 "e07d437bae4e2b3fa1f535f2b46b9e938ed013729c9911ff09c7ce94ec2bdc35"

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
