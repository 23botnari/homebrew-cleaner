cask "cleaner" do
  version "1.1"
  sha256 "819e6c4b44128fb86e254c217e19c472323def89a02a4c752fa06614105387e4"

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
    "~/Library/Caches/io.botnari.Cleaner",
    "~/Library/HTTPStorages/io.botnari.Cleaner",
    "~/Library/Preferences/io.botnari.Cleaner.plist",
    "~/Library/Saved Application State/io.botnari.Cleaner.savedState",
  ]
end
