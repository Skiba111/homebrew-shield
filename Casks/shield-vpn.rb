cask "shield-vpn" do
  version "1.0.41"

  on_arm do
    url "https://github.com/Skiba111/shield-releases/releases/download/macos-v#{version}/SHIELD.VPN-#{version}-arm64.dmg"
    sha256 "26d76111071f4a1478d7db1d835df5e31d93527b9fff568f54f2749dfbca950d"
  end

  on_intel do
    url "https://github.com/Skiba111/shield-releases/releases/download/macos-v#{version}/SHIELD.VPN-#{version}.dmg"
    sha256 "946d8483f5aeeb6cbde061d65843ff5161d6f3982904398273a65ce7d96ef89a"
  end

  name "SHIELD VPN"
  desc "Fast and secure VPN client powered by sing-box"
  homepage "https://shieldvpn.pro"

  app "SHIELD VPN.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/SHIELD VPN.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/SHIELD VPN",
    "~/Library/Preferences/com.shieldvpn.app.plist",
    "~/Library/Logs/SHIELD VPN",
    "~/Library/Caches/com.shieldvpn.app",
  ]
end
