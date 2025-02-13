#!/bin/bash


###########################################################
##########  Created by KOLEFELL ###########################
########## e-mail : kolefell@proton.me ####################
###########################################################

###### Installing SUBLIME ########
# Install the GPG key:
#sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg

# Adding The Stable Repo :
#sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo

# Update dnf and install Sublime Text:
#sudo dnf install sublime-text

####### Install With DNF ##########

# install VLC 

sudo dnf install vlc -y

# install GIT

sudo dnf install git -y

# install simplescreenrecorder 

#sudo dnf install simplescreenrecorder -y

# Install MESON - Meson is a build system (similar to automake) which can generate code for other lower-level build systems. For example, it can generate code for ninja. When packaging software which builds using Meson it's important to use the %meson macros instead of %ninja or other lower-level build system macros directly.

sudo dnf install meson -y

# Installing some essential packages - Obs-studio , KDENLIVE , python3

sudo dnf install obs-studio  kdenlive gimp  kate qbittorrent python3 -y


 
