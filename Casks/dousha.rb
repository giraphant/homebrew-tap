cask "dousha" do
  version "0.3.0"
  sha256 "f3f577b7e517ae50f94be21fcf61e4a4f6ed6b76ee6d16c72bad3f7aff6ff842"

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
