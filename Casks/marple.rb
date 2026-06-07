cask "marple" do
  version "0.2.1"
  sha256 "7543c46570077f73addc9897d7eb10918ed3f44f340c5d59bb85d4d7aaba62b1"

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
