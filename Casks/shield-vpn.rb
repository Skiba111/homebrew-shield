cask "shield-vpn" do
  version "1.0.46"

  on_arm do
    url "https://github.com/Skiba111/shield-releases/releases/download/macos-v#{version}/SHIELD.VPN-#{version}-arm64.dmg"
    sha256 "2781739eb4c32481e36f5959f2fcc8bfd98d5c41f6e4033b8e3fee34489c26bf"
  end

  on_intel do
    url "https://github.com/Skiba111/shield-releases/releases/download/macos-v#{version}/SHIELD.VPN-#{version}.dmg"
    sha256 "53a9122438fb510885fec356f2432a0e74e98db8b23dff12a3ad9c36f3899dfd"
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
