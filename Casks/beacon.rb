cask "beacon" do
  version "1.0.3"
  sha256 "4b47d859449a91569c7dc4d2bb88951f75e4a99a50423dc5d4dbbfe3737e3b3c"

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
