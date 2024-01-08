cask "aye-player-develop" do
  version "0.9.2"
  sha256 "658151769b18717d3aec45e7da5cb9a941f6ec7889f157e646206a0ede283787"

  url "https://github.com/AYE-Player/aye-player/releases/download/v#{version}/aye-player-#{version}-arm64.dmg"
  name "Aye-Player"
  desc "A new Youtube Music Player to deliver you the best experience possible."
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
