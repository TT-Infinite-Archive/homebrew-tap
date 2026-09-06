cask "toontown-infinite" do
  arch arm: "-arm64"

  version "0.2.15"
  sha256 arm:   "24b4f74b74b75b0be915ba00751a8d7068f2419f271bf55af659ec23534f7789",
         intel: "317e8de7b650efc2c56f118a52167cffe8b9ccaf592764f1a3d0194458587209"

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
