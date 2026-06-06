cask "veduta" do
  version "0.1.2"
  sha256 "6368a2059a509de3f64f46927f754cd2b4e230a8b6413344bd821151ecd53b93"

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
