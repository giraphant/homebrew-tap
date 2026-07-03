cask "veduta" do
  version "0.1.4"
  sha256 "71fb1a6f53c00cf27f208c766a7296bca2fde1b9579a778487dd68640a458e4f"

  url "https://github.com/giraphant/veduta/releases/download/v#{version}/Veduta.dmg"
  name "Veduta"
  desc "Local-first wallpaper app for public-domain and museum artwork"
  homepage "https://github.com/giraphant/veduta"

  depends_on macos: :ventura

  app "Veduta.app"

  zap trash: [
    "~/Library/Caches/com.veduta.app",
    "~/Library/HTTPStorages/com.veduta.app",
    "~/Library/Preferences/com.veduta.app.plist",
    "~/Library/Saved Application State/com.veduta.app.savedState",
  ]
end
