cask "qunleashed" do
  version "0.11.2"
  sha256 "1178a9405f4b27373b6f1d2b1a6d89bf3c2963bea30d796709cfe5067afbac77"

  url "https://github.com/DarkFlippers/qUnleashed/releases/download/beta-#{version}/qunleashed_#{version}_macos_universal.dmg"
  name "qUnleashed"
  desc "Flutter companion app for Flipper Zero and Unleashed firmware"
  homepage "https://github.com/DarkFlippers/qUnleashed"

  livecheck do
    url :url
    strategy :github_latest do |json|
      json["tag_name"][/^beta-v?(\d+(?:\.\d+)+)$/i, 1]
    end
  end

  depends_on macos: :monterey

  app "qUnleashed.app"
end
