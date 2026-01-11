#!/bin/bash

# 1. Clear the screen for a clean start
clear
echo "🎓 Welcome to Student Study Space!"
echo "-------------------------------------"
echo "⏳ Setting up your environment..."
echo "-------------------------------------"

# 2. Update Termux to avoid errors
pkg update -y && pkg upgrade -y

# 3. Setup Storage (Popup will appear)
termux-setup-storage

# 4. Install the necessary tools
echo "📦 Installing Git, Python, and Graphics..."
pkg install git python neofetch virglrenderer-android zsh wget curl -y

# 5. Install Kali Linux (Proot Distro)
echo "🐉 Installing Kali Linux (This may take time)..."
pkg install proot-distro -y
proot-distro install kali

# 6. Install Oh-My-Zsh (The cool graphics/colors)
echo "🎨 Installing 'Hacker' Theme..."
# This command installs it automatically without asking questions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# 7. Make Neofetch show up every time they open the app
echo "neofetch" >> ~/.zshrc

# 8. Success Message
clear
echo "✅ SETUP COMPLETE!"
echo "-------------------------------------"
echo "1. To use the new colors: Restart Termux"
echo "2. To start Kali Linux: proot-distro login kali"
echo "-------------------------------------"
