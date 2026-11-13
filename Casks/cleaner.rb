cask "cleaner" do
  version "1.1"
  sha256 "1a2817dda1f59387c1c33b27f2b765b5f5eb04f7367097a3e2fa4e5a71e81951"

  url "https://github.com/23botnari/cleaner/releases/download/v#{version}/Cleaner.dmg"
  name "Cleaner"
  desc "Shows what takes up disk space and cleans it safely"
  homepage "https://github.com/23botnari/cleaner"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Cleaner.app"

  zap trash: [
    "~/Library/Caches/io.webitfactory.Cleaner",
    "~/Library/HTTPStorages/io.webitfactory.Cleaner",
    "~/Library/Preferences/io.webitfactory.Cleaner.plist",
    "~/Library/Saved Application State/io.webitfactory.Cleaner.savedState",
  ]
end
