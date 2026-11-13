cask "cleaner" do
  version "1.1"
  sha256 "bef70406ff48a5b8d3d7b7ed45247318cd930683e8f1810570fa467ad5f22e78"

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
