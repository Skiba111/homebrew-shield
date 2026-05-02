cask "shield-vpn" do
  version "1.0.45"

  on_arm do
    url "https://github.com/Skiba111/shield-releases/releases/download/macos-v#{version}/SHIELD.VPN-#{version}-arm64.dmg"
    sha256 "294c450b753a3baa9ce4487c8071cdd615b04399751e1c953823818482e8712b"
  end

  on_intel do
    url "https://github.com/Skiba111/shield-releases/releases/download/macos-v#{version}/SHIELD.VPN-#{version}.dmg"
    sha256 "34d69e80229347ff1e4b4f224804e49a928ef1cd8cf71ddac882d226a0a2d7e3"
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
