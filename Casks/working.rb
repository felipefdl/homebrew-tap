cask "working" do
  version "0.13.0"
  sha256 "20a8c3f420f69d9881be275a367c0de1698922cf3c925e60cdb630467a9e83ee"

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
