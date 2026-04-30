cask "lsom" do
  version "2.0.0"
  sha256 "d4365da2837ee46bfc57e6baec7921a97c4d93be47b15ab7952ebbf74e1f947c"

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
