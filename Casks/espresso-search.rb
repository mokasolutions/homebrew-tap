cask "espresso-search" do
  version "0.2.1"
  sha256 "e78ef0128e89d582ee61af466e204bafa445d4aa89e9ab7f5c1c7447350116a0"

  url "https://updates.espressoformac.com/Espresso-#{version}.dmg"
  name "Espresso"
  desc "Instant file search for every disk, including disconnected ones"
  homepage "https://espressoformac.com/"

  livecheck do
    url "https://espressoformac.com/api/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Espresso.app"
  binary "#{appdir}/Espresso.app/Contents/Helpers/espresso"

  zap trash: [
    "~/Library/Application Support/Espresso",
    "~/Library/Caches/app.espresso.Espresso",
    "~/Library/HTTPStorages/app.espresso.Espresso",
    "~/Library/Preferences/app.espresso.Espresso.plist",
    "~/Library/Saved Application State/app.espresso.Espresso.savedState",
  ]
end
