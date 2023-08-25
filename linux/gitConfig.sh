#!/bin/bash

echo "┌────────────────────────────────────────┐"
echo "│    Git Configuration and SSH Setup     │"
echo "└────────────────────────────────────────┘"
echo ""
echo "This script will help you set up your Git configuration and generate an SSH key."
sleep 1

echo -n "Please enter your name (to appear on commits): "
read gitName

echo -n "Please enter your email (to appear on commits): "
read gitEmail

git config --global user.name "$gitName"
git config --global user.email "$gitEmail"

echo -e "\nGit configuration updated successfully."
sleep 1

echo "Now we will generate your SSH key, which will connect your PC to your GitHub account."
sleep 1

yes "" | ssh-keygen -t rsa -b 4096 -C "$gitEmail"

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_rsa

echo -e "\nHere is your generated SSH public key:"
cat ~/.ssh/id_rsa.pub

echo -e "\nCopy the SSH key above and go to your GitHub account settings:"
echo "1. Click on 'Settings' (top right corner)."
echo "2. Select 'SSH and GPG keys' from the left sidebar."
echo "3. Click 'New SSH key' or 'Add SSH key'."
echo "4. Paste the copied SSH key and give it a meaningful title."
echo "5. Click 'Add SSH key'."

echo "┌─────────────────────────────────────────────────────────────────────────────────────────────┐"
echo "│ 🎉 SSH key setup completed! You're now ready to connect your PC to your GitHub account. 🎉  │"
echo "└─────────────────────────────────────────────────────────────────────────────────────────────┘"
echo ""

