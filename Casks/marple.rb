cask "marple" do
  version "0.2.6"
  sha256 "db655fa7eab5e118c46c1a71aedfdf586c302fd81818333d1a19b94c0f01f6ba"

  url "https://github.com/giraphant/marple/releases/download/v#{version}/Marple.dmg"
  name "Marple"
  desc "Native macOS reader for your knowledge vault"
  homepage "https://github.com/giraphant/marple"

  depends_on macos: :sequoia

  app "Marple.app"
  binary "#{appdir}/Marple.app/Contents/MacOS/marple-cli"

  zap trash: [
    "~/Library/Application Support/com.marple.app",
    "~/Library/Preferences/com.marple.app.plist",
  ]
end
