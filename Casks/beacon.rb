cask "beacon" do
  version "1.0.2"
  sha256 "80f5cad8f8867b7981b42b5194264d264b80feb961dcd38da11163eb355b431a"

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
