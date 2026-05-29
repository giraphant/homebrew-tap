cask "dousha" do
  version "0.2.1"
  sha256 "00b199f14d4599200850e363b7c90206c222663b738bd023f14cae61d2ff377c"

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
