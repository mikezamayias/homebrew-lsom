cask "lsom" do
  version "1.3.2"
  sha256 "96e1d07a9cbc7c3d39eb94fd46da11f684a38d0212222decc5fb57b6884bcc78"

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
