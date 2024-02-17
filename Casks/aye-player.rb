cask "aye-player" do
  version "1.2.2"
  sha256 "35c7526f24543e19a09e6aebcd0d6f37f13522158a82275b8eb06edf5de1037b"

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
