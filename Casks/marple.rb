cask "marple" do
  version "0.2.2"
  sha256 "8ac8dc44263baaf891c6ebb474003b8a9a840792fea92df9ec2b1361ef5b0f6d"

  url "https://github.com/giraphant/marple/releases/download/v#{version}/Marple.dmg"
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
