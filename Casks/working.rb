cask "working" do
  version "0.3.0"
  sha256 "385047e753abf09a93ba627052082d228ef069083e3b7c057d3441e714b1255f"

  url "https://github.com/felipefdl/working/releases/download/v#{version}/Working_#{version}_universal.dmg"
  name "Working"
  desc "Google Chat client"
  homepage "https://github.com/felipefdl/working"

  auto_updates true
  depends_on macos: :ventura

  app "Working.app"

  uninstall quit: "dev.felipefdl.working"

  zap trash: [
    "~/.config/working",
    "~/Library/Caches/dev.felipefdl.working",
    "~/Library/Caches/working",
    "~/Library/HTTPStorages/dev.felipefdl.working*",
    "~/Library/Preferences/dev.felipefdl.working.plist",
    "~/Library/Saved Application State/dev.felipefdl.working.savedState",
    "~/Library/WebKit/dev.felipefdl.working",
  ]
end
