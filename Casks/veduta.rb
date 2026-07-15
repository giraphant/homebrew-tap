cask "veduta" do
  version "0.1.5"
  sha256 "8fc5b167936d1d58b5b42ab1f51460b2062d9467d8d024a7cfcf193f7d5e8b5d"

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
