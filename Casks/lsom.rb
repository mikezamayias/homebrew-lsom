cask "lsom" do
  version "2.0.0"
  sha256 "e5ce979f6d614f0e878ce53d6729cfdf6457321b58111ac74d221c0cced5ba1b"

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
