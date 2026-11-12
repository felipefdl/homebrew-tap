cask "working" do
  version "0.0.7"
  sha256 "536eb324688d1f947d32808fe581091d99cf771f7f13177494b560a56d074109"

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
