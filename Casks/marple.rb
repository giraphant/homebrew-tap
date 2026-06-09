cask "marple" do
  version "0.2.5"
  sha256 "05903482263112e60db3f6fe2bcdea44df341cc2e67c866d0795cd9a7d9134c9"

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
