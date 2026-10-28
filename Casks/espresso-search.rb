cask "espresso-search" do
  version "0.2.0"
  sha256 "6032af0f19b8f3b1e1a79437f7e9b0c5aa440e2c1ba139889c3594a9f49c8562"

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
