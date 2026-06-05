cask "veduta" do
  version "0.1.0"
  sha256 "219a2ce02d1cb306e1b095bfa1f3b3b6aa8f79ce6a67171ec78b1f9c3dbdcd1d"

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
