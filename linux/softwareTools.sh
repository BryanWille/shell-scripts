#!/bin/bash

echo "┌────────────────────────────────────────┐"
echo "│   Install Spotify, VS Code, Postman   │"
echo "│     Android Studio, and PostgreSQL    │"
echo "└────────────────────────────────────────┘"
echo ""
echo "This script will install various software tools."
sleep 1

echo -e "\nUpdating package list..."
apt-get update
sleep 1

echo -e "\nInstalling Spotify..."
snap install spotify
sleep 1

echo -e "\nInstalling Visual Studio Code..."
snap install code --classic
sleep 1

echo -e "\nInstalling Postman..."
snap install postman
sleep 1

echo -e "\nInstalling Android Studio..."
snap install android-studio --classic
sleep 1

echo -e "\nInstalling PostgreSQL..."
apt-get install -y postgresql postgresql-contrib
sleep 1

echo "┌─────────────────────────────────────────────────────────────────────────────────────────────┐"
echo "│ 🎉 Installation of software tools completed! You're now ready to work and develop. 🎉       │"
echo "└─────────────────────────────────────────────────────────────────────────────────────────────┘"
echo ""
