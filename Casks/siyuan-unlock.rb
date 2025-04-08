cask "siyuan-unlock" do
  arch arm: "-arm64"
  
  version :latest
  sha256 :no_check

  url "https://github.com/appdev/siyuan-unlock/releases/download/v#{version}/siyuan-unlock-v#{version}-mac#{arch}.dmg"
  name "Siyuan Unlock"
  desc "SiYuan premium features unlocked"
  homepage "https://github.com/appdev/siyuan-unlock"

  livecheck do
    url :url
    strategy :github_latest
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
