#!/bin/bash

#echo -n  "Do You Want to Update Your System ? "

#read UPDT

#if [[ "$UPDT" == "yes" || "$UPDT" == "y" ]]
#then
 # sudo dnf update -y

#echo  "Your System has been Updated "

#fi

echo -n "Do You Want to Enable RPMFusion repo ? "

read RPMF

echo -n "Do You Want To Install The Metadata And Multimedia From RPMFuison ? "

read MULTIM

echo -n "Do You Want To Instal The NVIDIA Driver ? "

read NVIDIA

echo -n "Do You Want To Install WINE-STAGING for GAMING ? "

read WINES

echo -n "Do You Want To Install STEAM and LUTRIS for GAMING ? " 

read STEAM

echo -n "Do You Want To Enable And USE FLATPAKs ? "

read FLATPK

echo -n "Do You Want To Install  The GNOME Tweaks and Extensions Tools ? " 

read TWEAKS


if [[ "$RPMF" == "yes" || "$RPMF == "y" ]]
then
  sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo "RPMFusion repo is Now Enabled "

fi


if [[ "$MULTIM" == "yes" || "$MULTIM" == "y" ]]
then
  sudo dnf groupupdate core -y

  sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y

  sudo dnf groupupdate sound-and-video -y
 
  sudo dnf install rpmfusion-free-release-tainted -y

  sudo dnf install libdvdcss  -y

  sudo dnf install rpmfusion-nonfree-release-tainted -y

  sudo dnf install \*-firmware -y

fi

if [[ "$NVIDIA" == "yes" || "$NVIDIA" == "y" ]]
then 
  sudo dnf update -y

  sudo dnf install akmod-nvidia -y

  sudo dnf install xorg-x11-drv-nvidia-cuda -y

  sudo dnf install vulkan -y

  sudo dnf install xorg-x11-drv-nvidia-cuda-libs -y

fi


if [[ "$WINES" == "yes" || "$WINES" == "y" ]]
then
  sudo dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/37/winehq.repo

  sudo dnf install winehq-staging -y

fi


if [[ "$STEAM" == "yes" || "$STEAM" == "y" ]]
then

  sudo dnf install steam lutris  -y

fi


if [[ "$FLATPK" == "yes" || "$FLATPK" == "y" ]]
then

  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

fi



if [[ "$TWEAKS" == "yes" || "$TWEAKS" == "y" ]]
then

  sudo dnf install gnome-extensions-app gnome-tweaks -y

fi


echo "You Are Ready And Fully LOADED :) ! "







