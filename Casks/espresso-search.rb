cask "espresso-search" do
  version "0.1.1"
  sha256 "bbe67cdbf2eb891be12641a712887663b9f09fecb8ed807158d77f4e4673103e"

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
