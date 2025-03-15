cask "siyuan-unlock" do
  arch arm: "-arm64"
  
  version "3.1.24"
  sha256 "INSERT_CHECKSUM_HERE"

  url "https://github.com/appdev/siyuan-unlock/releases/download/v#{version}/siyuan-unlock-v#{version}-mac#{arch}.dmg"
  name "Siyuan Unlock"
  desc "SiYuan premium features unlocked"
  homepage "https://github.com/appdev/siyuan-unlock"

  depends_on macos: ">= :catalina"

  app "Siyuan.app"

  zap trash: [
    "~/Library/Application Support/SiYuan-Electron",
    "~/Library/Preferences/com.siyuan.unlock.plist",
    "~/Library/Saved Application State/com.siyuan.unlock.savedState"
  ]
end
