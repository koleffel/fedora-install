#!/bin/bash


###########################################################
##########  Created by KOLEFELL ###########################
########## e-mail : kolefell@proton.me ####################
###########################################################

###### Installing SUBLIME ########
# Install the GPG key:
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg

# Adding The Stable Repo :
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo

# Update dnf and install Sublime Text:
sudo dnf install sublime-text

####### FLATHUB ########

#install Popsicle

flatpak install flathub com.system76.Popsicle -y

#install Blender

flatpak install flathub org.blender.Blender -y

#install Kdenlive

flatpak install flathub org.kde.kdenlive -y

#install Obs-studio

flatpak install flathub com.obsproject.Studio -y

#install Onlyoffice

flatpak install flathub org.onlyoffice.desktopeditors -y

#install Brave Browser

flatpak install flathub com.brave.Browser -y

#install qBittorrent

flatpak install flathub org.qbittorrent.qBittorrent -y

#install Gimp

flatpak install flathub org.gimp.GIMP -y

#install Spotify

flatpak install flathub com.spotify.Client -y

#install Telegram

flatpak install flathub org.telegram.desktop -y

#install Viber

flatpak install flathub com.viber.Viber -y

#install Handbrake

flatpak install flathub fr.handbrake.ghb -y

#install VScode

flatpak install flathub com.visualstudio.code -y

#install Youtube Downloader Plus

flatpak install flathub io.github.aandrew_me.ytdn -y

#install Audacity

flatpak install flathub org.audacityteam.Audacity -y


####### Install With DNF ##########

# install VLC 

sudo dnf install vlc -y

# install GIT

sudo dnf install git -y

# install simplescreenrecorder 

sudo dnf install simplescreenrecorder -y


 