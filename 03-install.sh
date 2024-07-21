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

####### Install With DNF ##########

# install VLC 

sudo dnf install vlc -y

# install GIT

sudo dnf install git -y

# install simplescreenrecorder 

sudo dnf install simplescreenrecorder -y


 
