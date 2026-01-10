#!/bin/bash

# 1. Clear screen and show a welcome message
clear
echo "🎓 Starting Student Study Space Setup..."
echo "----------------------------------------"

# 2. Update Termux
echo "📦 Updating packages (this might take a while)..."
pkg update -y && pkg upgrade -y

# 3. Setup Storage
echo "📂 Connecting to phone storage..."
termux-setup-storage

# 4. Install useful tools
echo "🛠️ Installing basic tools..."
pkg install git python neofetch virglrenderer-android -y

# 5. Install Proot-Distro (For Kali Linux)
echo "🐉 Installing Kali Linux..."
pkg install proot-distro -y
proot-distro install kali

# 6. Customize the look (ZSH)
echo "🎨 Making it look cool..."
pkg install zsh -y
# (This part automates the "Oh My Zsh" setup without asking questions)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo "----------------------------------------"
echo "✅ SETUP COMPLETE!"
echo "To start Kali Linux, type: proot-distro login kali"
echo "----------------------------------------"
