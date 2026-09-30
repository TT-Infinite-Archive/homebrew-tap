cask "toontown-infinite" do
  arch arm: "-arm64"

  version "1.0.6"
  sha256 arm:   "c7247442dcca558a34d7fb597b0ee39862493090947bb8154485aaed6d12612b",
         intel: "6e047f522015e9a63ca291e0ecfb3414deb52bee7136fe40ab97b5169128a1de"

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
