cask "working" do
  version "0.3.1"
  sha256 "3148611b3936e93e75ac1c08e5b00c4e85659526387c83b79696d9cf72678efe"

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
