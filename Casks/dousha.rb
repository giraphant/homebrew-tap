cask "dousha" do
  version "0.4.0"
  sha256 "e191610c5b77d9c2df813f88a7e729f464d701f969ce327e4a84c7afbf1ab59b"

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
