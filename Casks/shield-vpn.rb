cask "shield-vpn" do
  version "1.0.42"

  on_arm do
    url "https://github.com/Skiba111/shield-releases/releases/download/macos-v#{version}/SHIELD.VPN-#{version}-arm64.dmg"
    sha256 "3a49d6b91d24de1f81843de7f887e761810b91f663bfd946400c05857288ad4e"
  end

  on_intel do
    url "https://github.com/Skiba111/shield-releases/releases/download/macos-v#{version}/SHIELD.VPN-#{version}.dmg"
    sha256 "3a97fa1f7d1d3ab555f1a07757a5e8f7ec09ee2bdc64a02dffc2a2cea9429c54"
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
