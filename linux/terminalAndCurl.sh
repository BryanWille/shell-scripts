#!/bin/bash

echo "┌────────────────────────────────────────┐"
echo "│       Oh My Zsh and curl Setup         │"
echo "└────────────────────────────────────────┘"
echo ""
echo "This script will install and configure Oh My Zsh and curl."
sleep 1

# Verifica se o script está sendo executado como root
if [[ $EUID -ne 0 ]]; then
   echo "This script needs to be run as root (with sudo)." 
   exit 1
fi

echo -e "\nUpdating package list..."
apt-get update
sleep 1

echo -e "\nInstalling Oh My Zsh..."
apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sleep 1

echo -e "\nConfiguring Oh My Zsh as the default shell..."
chsh -s $(which zsh)
sleep 1

echo -e "\nInstalling curl..."
apt-get install -y curl
sleep 1

echo -e "\nOh My Zsh and curl have been installed and configured."
sleep 1

echo "┌─────────────────────────────────────────────────────────────────────────────────┐"
echo "│ 🎉 Oh My Zsh and curl setup completed! Rebooting the system to activate ZSH. 🎉 │"
echo "└─────────────────────────────────────────────────────────────────────────────────┘"
echo ""

sleep 2
reboot -f now

