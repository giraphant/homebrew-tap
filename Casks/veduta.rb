cask "veduta" do
  version "0.1.3"
  sha256 "10b1856a2f2c6cc1060d04e65a73dfeca45372f7811d92735ecb5aafa8dca620"

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
