cask "lsom" do
  version "1.2.0"
  sha256 "46aca43e7d4b633948f2f6b6e9a9e687ca9298a7c81b0fc87391b1195356a9f3"

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
