# Put on monitor mode

echo "This script will put your network card in monitor mode"

sleep 1
echo "Type your card driver name (you can get it on iwconfig)"
read cardName

sudo ifconfig $cardName down # deactive cardboard
echo "$cardName stopped"

sudo iwconfig $cardName mode monitor # put it on monitor mode
sudo ifconfig $cardName up # up it again

sleep 1
echo "Which channel  frequency you would like? "
read channel # change the frequency, like 2462 is channel 11

sudo iwconfig $cardName channel $channel