cask "marple" do
  version "0.2.13"
  sha256 "19d10426e91b90a5498988f91711287a23b5694b4a489f26a78de4f2e0cc8be5"

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
