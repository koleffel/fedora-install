#!/bin/bash

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

echo " Remove CHEESE !!! "

sudo dnf remove cheese -y

echo " Remove Libre Office ! "

sudo dnf remove libreoffice-calc libreoffice-writer libreoffice-impress -y

echo " Remove Document Scanner . "

sudo dnf remove simple-scan -y


echo "/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/**//*/*/*/"
echo "Installing extra software !"
echo "/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/**//*/*/*/"

sudo dnf install audacity -y
sudo dnf install gimp -y
sudo dnf install git -y
sudo dnf install uget -y
sudo dnf install vlc -y
#sudo dnf install openjdk JAVA
