#!/usr/bin/env bash
# LiquidView one-line installer:
#   curl -fsSL https://raw.githubusercontent.com/XPro-Gamer-Rhine/LiquidView-app/main/install.sh | bash
# Downloads the latest release with curl (which never sets the quarantine
# flag), installs to /Applications, and launches — no Gatekeeper fights, and
# NOTHING else to install: mpv/ffmpeg and every library ship inside the app.
set -euo pipefail

REPO="XPro-Gamer-Rhine/LiquidView-app"
DEST="/Applications/LiquidView.app"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

echo "🎬 Installing LiquidView…"

URL="https://github.com/$REPO/releases/latest/download/LiquidView.tar.gz"
curl -fL --progress-bar "$URL" -o "$TMP/LiquidView.tar.gz"
tar -xzf "$TMP/LiquidView.tar.gz" -C "$TMP"

[ -d "$TMP/LiquidView.app" ] || { echo "✗ download did not contain LiquidView.app"; exit 1; }

# Replace any existing copy.
if [ -d "$DEST" ]; then
  osascript -e 'tell application "LiquidView" to quit' >/dev/null 2>&1 || true
  sleep 1
  rm -rf "$DEST"
fi
cp -R "$TMP/LiquidView.app" "$DEST"
xattr -dr com.apple.quarantine "$DEST" 2>/dev/null || true

open "$DEST"
echo "✓ LiquidView installed. Drop an image, comic .zip, video, or PDF onto a"
echo "  screen edge — it pours out. Drag it to float, or press F for full screen."
