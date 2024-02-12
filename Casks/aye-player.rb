cask "aye-player" do
  version "1.1.2"
  sha256 "9812371dd8bc133893e36528c14c1537a584f69daef0fb172243f6af52072fc2"

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
