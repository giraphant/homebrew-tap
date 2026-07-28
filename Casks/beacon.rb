cask "beacon" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/giraphant/beacon/releases/download/v#{version}/Beacon.dmg"
  name "Beacon"
  desc "Menu-bar price ticker with configurable alerts"
  homepage "https://github.com/giraphant/beacon"

  depends_on macos: :sonoma

  app "Beacon.app"

  zap trash: [
    "~/Library/Preferences/com.inol.beacon.plist",
    "~/Library/Saved Application State/com.inol.beacon.savedState",
  ]
end
