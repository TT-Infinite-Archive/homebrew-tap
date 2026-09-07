cask "toontown-infinite" do
  arch arm: "-arm64"

  version "1.0.0"
  sha256 arm:   "c169c8455acb96830668059844cc0ebd579c84c4646362d4ea53887e3293f893",
         intel: "65380c71ba1acd638304d2cf57b594433c42a202dd867294a9fb1397c7fd98d0"

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
