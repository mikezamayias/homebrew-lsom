cask "lsom" do
  version "2.1.0"
  sha256 "b2ae77c860a0da7e208567e24988be5f915862c697736bd128709f67a01c811b"

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
