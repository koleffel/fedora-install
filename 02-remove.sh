#!/bin/bash

###########################################################
##########  Created by KOLEFELL ###########################
########## e-mail : kolefell@proton.me ####################
###########################################################


echo " Remove CHEESE !!! "

sudo dnf remove cheese -y

echo " Remove Libre Office ! "

sudo dnf remove libreoffice* -y

echo " Remove Document Scanner . "

sudo dnf remove simple-scan -y


echo "/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/**//*/*/*/"
echo "We will remove some games and KDE PIM suit !!!"
echo "/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/**//*/*/*/"

sudo dnf remove akonadi* -y
sudo dnf remove konversation -y
sudo dnf remove dragon -y
sudo dnf remove kmahjongg -y
sudo dnf remove kmines -y
sudo dnf remove kpat -y
sudo dnf remove kamoso -y
sudo dnf remove akregator -y



echo " ########################################### "
echo " ###### Clean Up Is DONE !!! ############### "
echo " ########################################### "








