echo "This script will sync your linux to your github account"

sleep 1
echo "First type your name (that will appear on commits)"
read gitName

sleep 1
echo "Now type your email (that will appear on commits)"
read gitEmail

git config --global user.name "$gitName"
git config --global user.email "$gitEmail"

sleep 2
echo "Email and Username succesfully setted"

sleep 1
echo "Now we will generate your ssh key, that will connect your pc to your github account"
sleep 1

ssh-keygen -t rsa -C "$gitEmail"

sleep 2

cat ~/.ssh/id_rsa.pub

sleep 2
echo "Now copy your key above, and go to your github configurations > ssh keys > add a ssh key > paste this key"


