cask "working" do
  version "0.1.5"
  sha256 "b9dfe53e9c5b4c5d277d1b8d59730fd62479a993592156b2fb412dc28fc62562"

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
