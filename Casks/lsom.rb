cask "lsom" do
  version "1.1.0"
  sha256 "ae48669982ba4824f056166355e1cd3c8ab3c225534922458e0e0d5adc413646"

  url "https://github.com/mikezamayias/lsom/releases/download/v#{version}/lsom-v#{version}.dmg"
  name "lsom"
  desc "Logitech Status on Mac - Monitor Logitech device battery from your menu bar"
  homepage "https://lsom-landing.pages.dev"

  depends_on macos: ">= :sonoma"

  app "lsom.app"

  zap trash: [
    "~/Library/Application Support/lsom",
    "~/Library/Preferences/com.mikezamayias.lsom.plist",
    "~/Library/Caches/com.mikezamayias.lsom",
  ]
end
