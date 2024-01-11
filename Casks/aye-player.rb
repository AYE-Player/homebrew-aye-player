cask "aye-player" do
  version "0.9.4"
  sha256 "2a113a5c7bd9a473b536340cef8f3b8a572242440b853d344cb1e996dd4c9b34"

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
