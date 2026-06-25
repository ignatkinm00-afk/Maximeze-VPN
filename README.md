<div align="center">

# Maximeze VPN

**Fast, secure, multi-platform proxy client**

[![Release](https://img.shields.io/github/release/ignatkinm00-afk/Maximeze-VPN.svg?style=flat-square)](https://github.com/ignatkinm00-afk/Maximeze-VPN/releases/)
[![Downloads](https://img.shields.io/github/downloads/ignatkinm00-afk/Maximeze-VPN/total?style=flat-square&logo=github)](https://github.com/ignatkinm00-afk/Maximeze-VPN/releases/)
[![Build](https://img.shields.io/github/actions/workflow/status/ignatkinm00-afk/Maximeze-VPN/build-android.yml?style=flat-square&label=Android%20Build)](https://github.com/ignatkinm00-afk/Maximeze-VPN/actions)

</div>

---

## What is Maximeze VPN?

A multi-platform proxy client based on [Sing-box](https://github.com/SagerNet/sing-box) universal proxy tool-chain. Maximeze VPN offers a wide range of capabilities: automatic node selection, TUN mode, remote profiles and more. Ad-free and open-source.

## 🚀 Features

- **Multi-platform** — Android, iOS, Windows, macOS, Linux
- **Wide protocol support** — VLESS, VMess, Reality, TUIC, Hysteria, WireGuard, SSH and more
- **Subscription formats** — Sing-box, V2ray, Clash, Clash Meta
- **Auto subscription update**
- **Delay-based node selection**
- **Traffic & quota display**
- **TUN mode**
- **Dark / Light theme**
- **Open source**

## 📥 Download

| Platform | Link |
|----------|------|
| Android (arm64) | [APK](https://github.com/ignatkinm00-afk/Maximeze-VPN/releases/latest) |
| Android (universal) | [APK](https://github.com/ignatkinm00-afk/Maximeze-VPN/releases/latest) |
| Windows | [Setup](https://github.com/ignatkinm00-afk/Maximeze-VPN/releases/latest) |
| Linux | [AppImage](https://github.com/ignatkinm00-afk/Maximeze-VPN/releases/latest) |

## 🛠 Build from source

```bash
git clone https://github.com/ignatkinm00-afk/Maximeze-VPN.git
cd Maximeze-VPN
flutter pub get
flutter build apk --debug
```

Requires: Flutter 3.32+, Go 1.21+, Android NDK 28.2

## ✏️ Based on

- [Sing-box](https://github.com/SagerNet/sing-box)
- [hiddify/hiddify-next](https://github.com/hiddify/hiddify-next)
- [Clash Meta](https://github.com/MetaCubeX/Clash.Meta)

## 📄 License

[MIT](LICENSE.md)
