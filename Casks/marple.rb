cask "marple" do
  version "0.1.0"
  sha256 "8dee56ee84f718736f7e908e0bb389600900e7a6ee6fc268010ce1250204e534"

  url "https://github.com/giraphant/marple/releases/download/v0.1.0/Marple.dmg"
  name "Marple"
  desc "Native macOS reader for your knowledge vault"
  homepage "https://github.com/giraphant/marple"

  depends_on macos: ">= :sequoia"

  app "Marple.app"
  binary "#{appdir}/Marple.app/Contents/MacOS/marple-cli"

  zap trash: [
    "~/Library/Application Support/com.marple.app",
    "~/Library/Preferences/com.marple.app.plist",
  ]
end
