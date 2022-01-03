#!/bin/bash

#sudo dnf update -y

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf groupupdate core -y

sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y

sudo dnf groupupdate sound-and-video -y

sudo dnf install rpmfusion-free-release-tainted -y

sudo dnf install libdvdcss -y

sudo dnf install rpmfusion-nonfree-release-tainted -y

sudo dnf install \*-firmware -y

#installing the NVIDIA drivers 

sudo dnf update -y

sudo dnf install akmod-nvidia  -y

sudo dnf install xorg-x11-drv-nvidia-cuda  -y

# installing the Vulkan support

sudo dnf install vulkan -y

# RPM Fusion support ffmpeg compiled with NVENC/NVDEC

sudo dnf install xorg-x11-drv-nvidia-cuda-libs -y

#installing wine-staging

sudo dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/35/winehq.repo 

sudo dnf install winehq-staging -y

#installing the Steam and Lutris 

sudo dnf install steam lutris -y

#Enable Flatpak Repos

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo




