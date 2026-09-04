cask "toontown-infinite" do
  arch arm: "-arm64"

  version "0.2.12"
  sha256 arm:   "53e9381a2f6242a19e50b56b32c11ed579a9ef6230b2804134ee198eb1a4bcba",
         intel: "b58198bbcf2e652bfa21fc18e98f27b501f33b2a664e390892039d8d20bc6548"

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
