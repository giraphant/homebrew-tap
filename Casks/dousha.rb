cask "dousha" do
  version "0.5.0"
  sha256 "6dc20926dc65d7f2c9c0fc8eb33f0fcc97f23494d6542107aed659644338bc38"

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
