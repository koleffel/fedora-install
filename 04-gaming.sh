#!/bin/bash

###########################################################
##########  Created by KOLEFELL ###########################
########## e-mail : kolefell@proton.me ####################
###########################################################

echo "Adding the WINEHQ Repo !!!"

sudo dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/38/winehq.repo

echo "Installing the WINE package !"

sudo dnf install winehq-staging -y
  
echo "Installing the LUTRIS package !"

sudo dnf install steam lutris  -y

echo "Installing Steam "

sudo dnf install steam -y

echo " ######################################## "
echo " #### Now You Are Ready To Game !!! ##### "
echo " ######################################## "
