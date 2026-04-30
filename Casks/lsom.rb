cask "lsom" do
  version "2.0.0"
  sha256 "47c51dffc3b4838402152a453c75420166aae1312e71b36455ab25c31608e403"

  url "https://lsom-landing.pages.dev/downloads/lsom-v#{version}.dmg"
  name "lsom"
  desc "Logitech Status on Mac - Monitor Logitech device battery from your menu bar"
  homepage "https://lsom-landing.pages.dev"

  depends_on macos: ">= :sonoma"

  app "lsom.app"

  postflight do
    system "xattr", "-cr", "#{appdir}/lsom.app"
  end

  zap trash: [
    "~/Library/Application Support/lsom",
    "~/Library/Preferences/com.mikezamayias.lsom.plist",
    "~/Library/Caches/com.mikezamayias.lsom",
  ]
end
