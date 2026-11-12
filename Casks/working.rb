cask "working" do
  version "0.0.4"
  sha256 "27c7e411e6b0a7f29ca4b18f87dd42405d1c104f66b1e2f8aec4807e4a949632"

  url "https://github.com/felipefdl/working/releases/download/v#{version}/Working_#{version}_universal.dmg"
  name "Working"
  desc "Native macOS Google Chat client"
  homepage "https://github.com/felipefdl/working"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Working.app"

  zap trash: [
    "~/.config/working",
    "~/Library/Caches/working",
  ]
end
