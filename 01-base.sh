#!/bin/bash

###########################################################
##########  Created by KOLEFELL ###########################
########## e-mail : kolefell@proton.me ####################
###########################################################


  echo "Installing the RPMFusion Rero !"

  sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

  echo "Updating the Group Core !"

  sudo dnf groupupdate core -y

  sudo dnf update --refresh

  sudo dnf upgrade --refresh -y

  echo "Installing the Multimedia Codecs !"

  sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel -y

  sudo dnf install lame\* --exclude=lame-devel -y

  sudo dnf group upgrade --with-optional Multimedia -y

  sudo dnf install x265 x264 wavpack xvidcore faad2 faad2-libs mpg123 -y

  #sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y

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

  sudo dnf install vulkan vulkan-tools vulkan-headers vulkan-loader vulkan-validation-layers-y

  sudo dnf install xorg-x11-drv-nvidia-cuda-libs -y

  sudo dnf upgrade -y

    
  echo "Adding FLATPAK to your System !"

  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  
  echo "Installing the Gnome Extensions and Gnome Tweaks to your System !"

  echo "Adding the Gnome-tweaks and Gnome Extensions for customizations !"

  sudo dnf install gnome-extensions-app gnome-tweaks -y

  echo "===================================="
  
  echo "You Are Ready And Fully LOADED :) ! "

  echo "===================================="
