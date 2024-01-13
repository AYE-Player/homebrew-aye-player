cask "aye-player" do
  version "0.9.6"
  sha256 "096c53341ce7c26c9d02a012a0da2f47fa4f8dd0963d47b8180d687c546bd5ae"

  url "https://github.com/AYE-Player/aye-player/releases/download/v#{version}/aye-player-#{version}-arm64.dmg"
  name "Aye-Player"
  desc "New Youtube Music Player to deliver you the best experience possible"
  homepage "https://github.com/AYE-Player/aye-player"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "aye-player.app"

  zap trash: [
    "~/Library/Application Support/aye-player",
    "~/Library/Preferences/aye-player.plist",
    "~/Library/Saved Application State/aye-player.savedState/",
  ]
end
