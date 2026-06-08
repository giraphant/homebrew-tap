cask "dousha" do
  version "0.3.4"
  sha256 "d6e129891104af3b615f6d412c959460b89d3f4aff1c30843642064fad6ed309"

  url "https://github.com/giraphant/dousha/releases/download/v#{version}/Dousha.dmg"
  name "Dousha"
  desc "Menu-bar push-to-talk dictation app"
  homepage "https://github.com/giraphant/dousha"

  depends_on macos: :sonoma

  app "Dousha.app"

  zap trash: [
    "~/Library/Application Support/Dousha",
    "~/Library/Caches/com.dousha.app",
    "~/Library/Caches/Dousha",
    "~/Library/HTTPStorages/com.dousha.app",
    "~/Library/Preferences/com.dousha.app.plist",
    "~/Library/Saved Application State/com.dousha.app.savedState",
  ]
end
