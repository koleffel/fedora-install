#!/bin/bash

  echo "Installing the RPMFusion Rero !"

  sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

  echo "Updating the Group Core !"

  sudo dnf groupupdate core -y

  echo "Installing the Multimedia Codecs !"

  sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y

  echo "Installing the Sound And Video Codecs !"

  sudo dnf groupupdate sound-and-video -y
 
  echo "Installing the RPMFusion FREE Tainted packages !"

  sudo dnf install rpmfusion-free-release-tainted -y

  echo "Install the LIBDVD package !"

  sudo dnf install libdvdcss  -y

  echo "Installing the RPMFusion NON-FREE Tainted packages !"

  sudo dnf install rpmfusion-nonfree-release-tainted -y

  echo "Install all the needed Firmware packages!"

  sudo dnf install \*-firmware -y
  
  echo "Update The System Before Installing the NVIDIA drivers !!!"

  sudo dnf update -y

  echo "Install the NVIDIA Drivers Needed !!!"

  sudo dnf install akmod-nvidia -y

  echo "Installing the CUDA package needed for NVIDIA !"

  sudo dnf install xorg-x11-drv-nvidia-cuda -y

  echo "Installing The VULKAN package !"

  sudo dnf install vulkan -y

  sudo dnf install xorg-x11-drv-nvidia-cuda-libs -y
  
  echo "Adding the WINEHQ Repo !!!"

  sudo dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/37/winehq.repo

  echo "Installing the WINE package !"

  sudo dnf install winehq-staging -y
  
  echo "Installing the LUTRIS package !"

  sudo dnf install steam lutris  -y
  
  echo "Adding FLATPAK to your System !"

  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  
  echo "Installing the Gnome Extensions and Gnome Tweaks to your System !"

  sudo dnf install gnome-extensions-app gnome-tweaks -y

  echo "===================================="
  
  echo "You Are Ready And Fully LOADED :) ! "

  echo "===================================="