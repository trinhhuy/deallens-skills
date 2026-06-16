#!/usr/bin/env bash
# DealLens Skills installer
# Installs skills to Claude Desktop or Cursor personal skills folder

set -e

REPO_URL="https://github.com/trinhhuy/deallens-skills"

# List of skills to install
SKILLS=(
    "company-research"
    "interview-prep"
    "sales-prep"
    "investor-due-diligence"
    "competitive-analysis"
)

echo "DealLens Skills Installer"
echo "─────────────────────────────"
echo ""
echo "Install target:"
echo "  1. Claude Desktop"
echo "  2. Cursor (personal: ~/.cursor/skills/)"
echo ""
read -p "Choose target [1]: " TARGET
TARGET=${TARGET:-1}

case "$TARGET" in
    1)
        case "$(uname -s)" in
            Darwin*)
                SKILLS_DIR="$HOME/Library/Application Support/Claude/skills"
                OS="macOS (Claude Desktop)"
                ;;
            Linux*)
                SKILLS_DIR="$HOME/.config/Claude/skills"
                OS="Linux (Claude Desktop)"
                ;;
            MINGW*|CYGWIN*|MSYS*)
                SKILLS_DIR="${APPDATA}/Claude/skills"
                OS="Windows (Claude Desktop)"
                ;;
            *)
                echo "Unsupported OS. Install manually — see README."
                exit 1
                ;;
        esac
        ;;
    2)
        SKILLS_DIR="$HOME/.cursor/skills"
        OS="Cursor"
        ;;
    *)
        echo "Invalid choice"
        exit 1
        ;;
esac

echo ""
echo "Detected: $OS"
echo "Install location: $SKILLS_DIR"
echo ""

mkdir -p "$SKILLS_DIR"

echo "Available skills:"
for i in "${!SKILLS[@]}"; do
    echo "  $((i+1)). ${SKILLS[$i]}"
done
echo "  a. All"
echo ""
read -p "Which skill(s) to install? [a]: " CHOICE
CHOICE=${CHOICE:-a}

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

install_skill() {
    local skill=$1
    if [ -d "$SCRIPT_DIR/$skill" ]; then
        echo "  Installing $skill..."
        cp -r "$SCRIPT_DIR/$skill" "$SKILLS_DIR/"
        echo "  OK: $skill installed"
    else
        echo "  ERROR: $skill not found in $SCRIPT_DIR"
    fi
}

if [ "$CHOICE" = "a" ] || [ "$CHOICE" = "A" ]; then
    echo ""
    echo "Installing all skills..."
    for skill in "${SKILLS[@]}"; do
        install_skill "$skill"
    done
else
    INDEX=$((CHOICE-1))
    if [ "$INDEX" -ge 0 ] && [ "$INDEX" -lt "${#SKILLS[@]}" ]; then
        install_skill "${SKILLS[$INDEX]}"
    else
        echo "Invalid choice"
        exit 1
    fi
fi

echo ""
echo "Done! Next steps:"
if [ "$TARGET" = "2" ]; then
    echo "  1. Restart Cursor or start a new agent session"
else
    echo "  1. Restart Claude Desktop (or reload Claude Code)"
fi
echo "  2. Try: \"Research stripe.com\""
echo "  3. The relevant skill should trigger automatically"
echo ""
echo "Docs: $REPO_URL"
