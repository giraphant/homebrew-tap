cask "beacon" do
  version "1.0.0"
  sha256 "2f6c1e9cd11ef9112e9b443e2ac4e2991e7b0eff65b1233f869028f3f8cbc46b"

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
