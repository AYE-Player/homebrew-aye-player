cask "aye-player" do
  version "1.2.5"
  sha256 "7e3f00f6c78caba760fb6d1405b16087e47dc4edf77f19a1cced17f11e46ab3c"

  url "https://github.com/AYE-Player/aye-player/releases/download/v#{version}/aye-player-#{version}-arm64.dmg"
  name "Aye-Player"
  desc "New Youtube Music Player to deliver you the best experience possible"
  homepage "https://github.com/AYE-Player/aye-player"

  auto_updates false
  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "aye-player.app"

  zap trash: [
    "~/Library/Application Support/aye-player",
    "~/Library/Preferences/aye-player.plist",
    "~/Library/Saved Application State/aye-player.savedState/",
  ]
end
