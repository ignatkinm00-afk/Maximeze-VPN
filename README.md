<div align="center">

# Maximeze VPN

**Быстрый, безопасный, многоплатформенный прокси-клиент**

[![Release](https://img.shields.io/github/release/ignatkinm00-afk/Maximeze-VPN.svg?style=flat-square)](https://github.com/ignatkinm00-afk/Maximeze-VPN/releases/)
[![Downloads](https://img.shields.io/github/downloads/ignatkinm00-afk/Maximeze-VPN/total?style=flat-square&logo=github)](https://github.com/ignatkinm00-afk/Maximeze-VPN/releases/)
[![Build](https://img.shields.io/github/actions/workflow/status/ignatkinm00-afk/Maximeze-VPN/build-android.yml?style=flat-square&label=Android%20Build)](https://github.com/ignatkinm00-afk/Maximeze-VPN/actions)

</div>

---

## Что такое Maximeze VPN?

Многоплатформенный прокси-клиент на базе [Sing-box](https://github.com/SagerNet/sing-box). Maximeze VPN обеспечивает безопасный и приватный доступ в интернет — без рекламы, без слежки, с открытым исходным кодом.

Поддерживает автоматический выбор узла, TUN-режим, удалённые профили и широкий набор протоколов.

## 🚀 Возможности

- **Мультиплатформенность** — Android, iOS, Windows, macOS, Linux
- **Широкая поддержка протоколов** — VLESS, VMess, Reality, TUIC, Hysteria, WireGuard, SSH и другие
- **Форматы подписок** — Sing-box, V2ray, Clash, Clash Meta
- **Автообновление подписок**
- **Выбор узла по задержке**
- **Отображение трафика и срока подписки**
- **TUN-режим** (перехват всего трафика)
- **Тёмная и светлая тема**
- **Без рекламы — открытый исходный код**

## 📥 Скачать

| Платформа | Ссылка |
|-----------|--------|
| Android (arm64) | [APK](https://github.com/ignatkinm00-afk/Maximeze-VPN/releases/latest) |
| Android (универсальный) | [APK](https://github.com/ignatkinm00-afk/Maximeze-VPN/releases/latest) |
| Windows | [Установщик](https://github.com/ignatkinm00-afk/Maximeze-VPN/releases/latest) |
| Linux | [AppImage](https://github.com/ignatkinm00-afk/Maximeze-VPN/releases/latest) |

## 🛠 Сборка из исходников

```bash
git clone https://github.com/ignatkinm00-afk/Maximeze-VPN.git
cd Maximeze-VPN
flutter pub get
flutter build apk --debug
```

Требования: Flutter 3.44+, Go 1.21+, Android NDK 28.2

## ✏️ Основано на

- [Sing-box](https://github.com/SagerNet/sing-box)
- [hiddify/hiddify-next](https://github.com/hiddify/hiddify-next)
- [Clash Meta](https://github.com/MetaCubeX/Clash.Meta)

## 📄 Лицензия

[MIT](LICENSE.md)
