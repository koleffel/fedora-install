#!/bin/bash

###########################################################
##########  Created by KOLEFELL ###########################
########## e-mail : kolefell@proton.me ####################
###########################################################

echo "Adding the WINEHQ Repo !!!"

sudo dnf5 config-manager addrepo --from-repofile=https://dl.winehq.org/wine-builds/fedora/41/winehq.repo

echo "Installing the WINE package !"

sudo dnf install winehq-staging -y
  
echo "Installing the LUTRIS package !"

sudo dnf install lutris  -y

echo "Installing Steam "

sudo dnf install steam -y

echo "Installing Gaming Tools - GOverlay, Gamemode, mangohud, vkbasalt !!!"

sudo dnf install goverlay gamemode lib32-gamemode vkbasalt lib32-vkbasalt -y

echo " ######################################## "
echo " #### Now You Are Ready To Game !!! ##### "
echo " ######################################## "
