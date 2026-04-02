#!/bin/bash
# LIO_OS Free Claude Code — One-Command Installer
# Installs free skills, templates, and resources
# LIO_OS — Created by @liogpt
# https://github.com/novusordos666/LIO_OS

set -e

REPO="novusordos666/LIO_OS"
REPO_URL="https://github.com/${REPO}.git"
INSTALL_DIR="$HOME/.lio_os"
SKILL_DIR="$HOME/.claude/commands/lio_os"

echo ""
echo "  LIO_OS Free Claude Code"
echo "  ======================"
echo ""

# ── Check for Claude Code ────────────────────────────────

# Add common Claude install locations to PATH for this session
for dir in "$HOME/.local/bin" "$HOME/.claude/local/bin" "/usr/local/bin"; do
    if [ -d "$dir" ] && [[ ":$PATH:" != *":$dir:"* ]]; then
        export PATH="$dir:$PATH"
    fi
done

if ! command -v claude &> /dev/null; then
    echo "  Claude Code is not installed yet."
    echo ""
    echo "  Copy and paste this into your terminal to install it:"
    echo ""
    echo "    curl -fsSL https://claude.ai/install.sh | bash"
    echo ""
    echo "  Then run this installer again:"
    echo ""
    echo "    curl -fsSL https://raw.githubusercontent.com/${REPO}/main/install.sh | bash"
    echo ""
    echo "  ─────────────────────────────────────────────"
    echo "  Need help? Follow @liogpt"
    echo "  ─────────────────────────────────────────────"
    echo ""
    exit 0
fi

echo "  ✓ Claude Code detected"
echo ""

# ── Clone or update the repo ──────────────────────────────

if [ -d "$INSTALL_DIR" ]; then
    echo "  Updating existing installation..."
    cd "$INSTALL_DIR"
    git pull --quiet origin main
    echo "  Updated to latest version."
else
    echo "  Downloading LIO_OS Free Claude Code..."
    git clone --quiet "$REPO_URL" "$INSTALL_DIR"
    echo "  Downloaded."
fi

echo ""

# ── Install skills to Claude Code ─────────────────────────

echo "  Installing skills..."
mkdir -p "$SKILL_DIR"

SKILL_COUNT=0
for skill_file in "$INSTALL_DIR/skills/"*.md; do
    if [ -f "$skill_file" ]; then
        cp "$skill_file" "$SKILL_DIR/"
        SKILL_NAME=$(basename "$skill_file" .md)
        echo "    ✓ /lio_os:${SKILL_NAME}"
        SKILL_COUNT=$((SKILL_COUNT + 1))
    fi
done

if [ "$SKILL_COUNT" -eq 0 ]; then
    echo "    No skills found."
else
    echo "  ${SKILL_COUNT} skill(s) installed."
fi

echo ""

# ── Summary ───────────────────────────────────────────────

echo "  Done!"
echo ""
echo "  What was installed:"
echo "  ├── Skills → ~/.claude/commands/lio_os/"
echo "  ├── Course → ~/.lio_os/course/"
echo "  ├── Gifts → ~/.lio_os/gifts/"
echo "  └── CLAUDE.md Templates → ~/.lio_os/claude-md-templates/"
echo ""
echo "  To get updates, just re-run this command."
echo "  The installer pulls the latest from GitHub automatically."
echo ""
echo "  ─────────────────────────────────────────────"
echo "  Premium community: https://lio.circle.so"
echo "  Follow @liogpt for daily AI tutorials"
echo "  ─────────────────────────────────────────────"
echo ""
echo "  ✅ Ready! Now just type:"
echo ""
echo "    claude"
echo ""
echo "  Then type:  /lio_os:start"
echo ""
