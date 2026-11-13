cask "cleaner-macos" do
  version "1.1"
  sha256 "3680dc7a5ba742dadd711cc3a483e9203d6b7517e2a235b8a34a98388c804a46"

  url "https://github.com/23botnari/cleaner/releases/download/v#{version}/CleanerMacOS.dmg"
  name "Cleaner MacOS"
  desc "Shows what takes up disk space and cleans it safely"
  homepage "https://github.com/23botnari/cleaner"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Cleaner MacOS.app"

  zap trash: [
    "~/Library/Caches/io.webitfactory.CuratenieMac",
    "~/Library/HTTPStorages/io.webitfactory.CuratenieMac",
    "~/Library/Preferences/io.webitfactory.CuratenieMac.plist",
    "~/Library/Saved Application State/io.webitfactory.CuratenieMac.savedState",
  ]
end
