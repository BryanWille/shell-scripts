#!/bin/bash

echo "┌────────────────────────────────────────────────────┐"
echo "│     PHP, Node, Composer, Python, JDK and Expo      │"
echo "└────────────────────────────────────────────────────┘"
echo ""
echo "This script will install and configure various programming tools."
sleep 1

echo -e "\nUpdating package list..."
apt-get update
sleep 1

echo -e "\nInstalling PHP..."
apt-get install -y php
sleep 1

echo -e "\nInstalling Node.js and npm..."
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
apt-get install -y nodejs
sleep 1

echo -e "\nInstalling Composer..."
apt-get install -y composer
sleep 1

echo -e "\nInstalling Python..."
apt-get install -y python3
sleep 1

echo -e "\nInstalling OpenJDK (JDK)..."
apt-get install -y openjdk-11-jdk
sleep 1

echo -e "\nInstalling Expo CLI..."
npm install -g expo-cli
sleep 1

echo "┌────────────────────────────────────────────────────────────────────────────────┐"
echo "│ 🎉 Installation of programming tools completed! You're now all set to code. 🎉 │"
echo "└────────────────────────────────────────────────────────────────────────────────┘"
echo ""
