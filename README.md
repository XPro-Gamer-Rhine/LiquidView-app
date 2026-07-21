# 🎬 LiquidView

A liquid media viewer for macOS. Drop an image, comic archive, video, or
document onto any screen edge — it pours out like water. Stick it to the
edge, drag it off to float anywhere, or press **F** for full screen.

**Website:** https://xpro-gamer-rhine.github.io/LiquidView-app/

## Install (one line)

```sh
curl -fsSL https://raw.githubusercontent.com/XPro-Gamer-Rhine/LiquidView-app/main/install.sh | bash
```

Or grab the archive from [Releases](https://github.com/XPro-Gamer-Rhine/LiquidView-app/releases/latest). macOS 14+. **Nothing else to install** — mpv, ffmpeg and every library ship inside the app.

## What it opens

- **Images** — anything macOS decodes: JPEG, PNG, HEIC, camera RAW, WebP, AVIF, animated GIF. Zoom (↑/↓ or pinch), pan, next/prev (←/→) through the whole folder.
- **Comic archives** — drop a `.zip` / `.cbz` and read the pages straight out of it, **no unzipping to disk**. Numeric-aware page order; delete the zip when you're done.
- **Video & audio** — powered by **mpv** with hardware (VideoToolbox) decoding, so it plays essentially anything at full quality. **Space** play/pause · **←/→** seek · **↑/↓** volume.
- **PDF, CSV, XLSX, and more** — rendered with the macOS QuickLook engine. Spreadsheets open wide; documents open like a page.

## Three ways to view

**Attached** to a screen edge · **Floating** (drag it anywhere) · **Full screen** (press **F**). The space around an attached card stays click-through, so the rest of your desktop keeps working.

Menu-bar icon for About / Quit. Open files by dropping them on an edge, on the Dock icon, via **Finder → Open With**, or **⌘O**.

---

This repository hosts LiquidView's download, installer and website — the
source code is private. Built on **LiquidKit**, the reusable metaball engine
behind the liquid animation. 100% native AppKit/SwiftUI; video via bundled
libmpv. No Electron.

Made by Rhineul Islam
