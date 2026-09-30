cask "gajim" do
  arch arm: "arm64", intel: "x86_64"

  version "2.6.0"
  sha256 arm:   "1fb665dd34987129458a9d1c98b57b332c8be56bab21bba82f6d9faee9fdd98a",
         intel: "600e858cbf12f966af03bafe60f978f081cc9e6ea50e2e104cb4556de03c17c7"

  url "https://gajim.org/downloads/#{version.major_minor}/Gajim-#{version}-#{arch}.dmg"
  name "Gajim"
  desc "XMPP/Jabber chat client"
  homepage "https://gajim.org/"

  depends_on :macos

  app "Gajim.app"
end
