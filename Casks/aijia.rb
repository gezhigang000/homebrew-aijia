cask "aijia" do
  version "0.3.0"
  sha256 "02f70baa7c579ceb0fa5f67658d0d96982de7b678f6a99f6599e83f22c39e7a4"

  url "https://github.com/gezhigang000/hragent-app/releases/download/v#{version}/aijia_0.2.0_aarch64.dmg"
  name "AI小家"
  desc "组织专家，工作助手 — HR Agent desktop app"
  homepage "https://github.com/gezhigang000/hragent-app"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "AI小家.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/AI小家.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.aijia.app",
    "~/.renlijia",
  ]
end
