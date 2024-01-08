cask "aye-player-develop" do
  version "0.9.2"
  sha256 :no_check

  #https://github.com/AYE-Player/aye-player/releases/download/v0.9.2/aye-player-0.9.2-arm64.dmg
  url "https://github.com/AYE-Player/aye-player/releases/download/v#{version}/aye-player-#{version}-arm64.dmg"
  name "Aye-Player"
  desc "A new Youtube Music Player to deliver you the best experience possible."
  homepage "https://github.com/AYE-Player/aye-player"
  
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "aye-player.app"

  #zap trash: [
  #  "~/Library/Application Support/io.playcover.PlayCover",
  #  "~/Library/Caches/io.playcover.PlayCover",
  #  "~/Library/Containers/io.playcover.PlayCover",
  #  "~/Library/Frameworks/PlayTools.framework",
  #  "~/Library/Preferences/io.playcover.PlayCover.plist",
  #  "~/Library/Saved Application State/io.playcover.PlayCover.savedState",
  #]
end
