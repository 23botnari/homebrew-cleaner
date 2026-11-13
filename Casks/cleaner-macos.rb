cask "cleaner-macos" do
  version "1.1"
  sha256 "d2db39c4ca3b826c0f08fd64cd66f52e80bbfb7db2b1cd8de187fddf621fd7ce"

  url "https://github.com/23botnari/cleaner/releases/download/v#{version}/CleanerMacOS.dmg"
  name "Cleaner MacOS"
  desc "Shows what takes up disk space and cleans it safely"
  homepage "https://github.com/23botnari/cleaner"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Cleaner MacOS.app"

  zap trash: [
    "~/Library/Caches/io.webitfactory.CuratenieMac",
    "~/Library/HTTPStorages/io.webitfactory.CuratenieMac",
    "~/Library/Preferences/io.webitfactory.CuratenieMac.plist",
    "~/Library/Saved Application State/io.webitfactory.CuratenieMac.savedState",
  ]
end
