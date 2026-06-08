cask "marple" do
  version "0.2.4"
  sha256 "565f3a72bfa0aa31af0e2b079e63f9a68a8c01ac404f3b3524e8b3233a610c21"

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
