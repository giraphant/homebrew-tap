cask "beacon" do
  version "1.0.1"
  sha256 "7af00abc020994e4501f50c285e376185bf60ca905f46be665b09c58a47e0b25"

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
