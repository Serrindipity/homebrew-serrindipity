cask "siyuan-unlock" do
  arch arm: "-arm64"
  
  version "3.1.25"
  sha256 "41560aed80d4bae98223c32a3b257e792e347b05924b019abf0e829c86dcfac7"

  url "https://github.com/appdev/siyuan-unlock/releases/download/v#{version}/siyuan-unlock-v#{version}-mac#{arch}.dmg"
  name "Siyuan Unlock"
  desc "SiYuan premium features unlocked"
  homepage "https://github.com/appdev/siyuan-unlock"

  livecheck do
    url "https://github.com/appdev/siyuan-unlock"
  end

  depends_on macos: ">= :catalina"

  conflicts_with cask: "siyuan"

  app "Siyuan.app", target: "SiYuan Unlock.app"

  postflight do
    system_command "/usr/bin/xattr",
                  args: ["-c", "#{appdir}/SiYuan Unlock.app/"],
                  sudo: false
  end

  zap trash: [
    "~/siyuan",
    "~/Library/Application Support/SiYuan-Electron",
    "~/Library/Preferences/com.siyuan.unlock.plist",
    "~/Library/Saved Application State/com.siyuan.unlock.savedState"
  ]
end
