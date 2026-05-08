# homebrew-shield

Official Homebrew tap for SHIELD VPN — enables one-line installation of the macOS client via Homebrew.

## Install

```bash
brew tap Skiba111/shield
brew install --cask shield-vpn
```

## Update

```bash
brew upgrade shield-vpn
```

## Uninstall

```bash
brew uninstall --cask shield-vpn
brew untap Skiba111/shield
```

## What is SHIELD VPN?

SHIELD VPN is a privacy-focused VPN service with a native macOS client built on Electron + TypeScript. It implements automatic geo-based split tunneling at the system network layer — traffic to foreign destinations goes through the encrypted tunnel, while domestic traffic uses the direct connection. No manual configuration required.

- **Protocol:** VLESS + XTLS-Reality (via sing-box)
- **Split tunneling:** automatic, geo IP-based, OS network level
- **Features:** kill switch, auto-reconnect, system tray, auto-update
- **Distribution:** [shield-releases](https://github.com/Skiba111/shield-releases)

## Manual Download

If you prefer not to use Homebrew, download the `.dmg` directly from [shield-releases](https://github.com/Skiba111/shield-releases/releases/latest).
