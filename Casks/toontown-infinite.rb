cask "toontown-infinite" do
  arch arm: "-arm64"

  version "1.0.2"
  sha256 arm:   "2aebd535caf4d3ed34c9a1ce79910badcf3c5c6c8621999b2db0d42110c309e8",
         intel: "9d6d6c432778b8b17ca0c05bb53d7114389ae23d039b615547fa6cb1dd3a7ddb"

  url "https://github.com/TT-Infinite-Archive/releases/releases/download/v#{version}/Toontown-Infinite-Launcher-#{version}#{arch}.dmg"
  name "Toontown Infinite"
  name "Toontown Infinite Launcher"
  desc "Launcher for the Toontown Infinite game"
  homepage "https://infinite.toontown.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Toontown Infinite Launcher.app"

  zap trash: [
    "~/Library/Application Support/Toontown Infinite Launcher",
    "~/Library/Caches/io.toontowninfinite.launcher",
    "~/Library/HTTPStorages/io.toontowninfinite.launcher",
    "~/Library/Logs/Toontown Infinite Launcher",
    "~/Library/Preferences/io.toontowninfinite.launcher.plist",
    "~/Library/Saved Application State/io.toontowninfinite.launcher.savedState",
  ]
end
