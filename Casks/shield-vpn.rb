cask "shield-vpn" do
  version "1.0.40"

  on_arm do
    url "https://github.com/Skiba111/shield-releases/releases/download/macos-v#{version}/SHIELD.VPN-#{version}-arm64.dmg"
    sha256 "150a9d7cb319aa1dcac48da0ece7c07b048dc2a77506a88a2f6259fce4e4467d"
  end

  on_intel do
    url "https://github.com/Skiba111/shield-releases/releases/download/macos-v#{version}/SHIELD.VPN-#{version}.dmg"
    sha256 "069c793f6bc10840ba2762ed648df7bb7a576362be2bd8d0cd70c8b54d4020c7"
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
