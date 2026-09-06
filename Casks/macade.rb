cask "macade" do
  version "0.5.0"
  sha256 "8c75f31a17aa7960c704fc7495de0de6d76f36dc239dce3d20136fc2ab31b833"

  url "https://github.com/Jayian1890/Macade/releases/download/v#{version}/Macade-#{version}-macOS.zip"
  name "Macade"
  desc "Native Fightcade client"
  homepage "https://github.com/Jayian1890/Macade"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Macade.app"
end
