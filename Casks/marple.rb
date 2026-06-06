cask "marple" do
  version "0.2.0"
  sha256 "f26018cbc71ef7d63ffd7c0c1928f65e8fc5b4b8a4f7deaf30a0066b5ffd8702"

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
