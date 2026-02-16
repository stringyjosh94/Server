#!/bin/sh

echo "========================================"
echo " LostCityRS Auto Setup & Start Script"
echo "========================================"

# Update & upgrade system packages
echo "[*] Updating system packages..."
apt update -y
apt upgrade -y

# Function to install packages if missing
install_pkg() {
    CMD="$1"
    PKG="$2"
    if ! command -v "$CMD" >/dev/null 2>&1; then
        echo "[*] Installing $PKG..."
        apt install -y "$PKG"
    else
        echo "[*] $PKG already installed."
    fi
}

# Install required system packages
install_pkg git git
install_pkg curl curl
install_pkg unzip unzip
install_pkg java openjdk-17-jdk
install_pkg wget wget
install_pkg make build-essential
install_pkg gcc build-essential

# Ensure Bun is installed
if [ -d "$HOME/.bun/bin" ]; then
    export PATH="$HOME/.bun/bin:$PATH"
fi

if ! command -v bun >/dev/null 2>&1; then
    echo "[*] Installing Bun..."
    curl -fsSL https://bun.sh/install | bash
    export PATH="$HOME/.bun/bin:$PATH"
fi

# Verify Java version
jver=$(java -version 2>&1 | awk -F[\".] '/version/ {print $2}')
if [ -z "$jver" ] || [ "$jver" -lt 17 ]; then
    echo "[!] Java 17 or newer is required."
    exit 1
fi

# Install project dependencies
echo "[*] Installing project dependencies..."
bun install

# Start LostCityRS server
echo "[*] Starting LostCityRS server..."
exec bun run start.ts
