#!/bin/bash


echo " Remove CHEESE !!! "

sudo dnf remove cheese -y

echo " Remove Libre Office ! "

sudo dnf remove libreoffice-calc libreoffice-writer libreoffice-impress -y

echo " Remove Document Scanner . "

sudo dnf remove simple-scan -y

echo " Install OnlyOffice from Flatpak "

sudo flatpak install flathub org.onlyoffice.desktopeditors -y

echo " Install Kdenlive from Flatpak ."

sudo flatpak install flathub org.kde.kdenlive -y

echo " Install simplescreenrecorder ."

sudo dnf install simplescreenrecorder -y

echo " Install obs-studio from Flatpak . "

sudo flatpak install flathub com.obsproject.Studio -y

echo " Install Brave browser from Flatpak ."

sudo flatpak install flathub com.brave.Browser -y

echo " Install Visual Studio Code from Microsoft . "

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc -y

sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

sudo dnf check-update -y

sudo dnf install code -y

echo " Install Qbittorrent from Flatpak . "

sudo flatpak install flathub org.qbittorrent.qBittorrent -y

echo " Install Spotify from Flatpak . "

sudo flatpak install flathub com.spotify.Client -y 

echo " Install Viber from Flatpak . "

sudo flatpak install flathub com.viber.Viber -y

echo " Install Video Downloader from Flatpak . "

sudo flatpak install flathub com.github.unrud.VideoDownloader -y

echo " Install Discord from Flatpak . "

sudo flatpak install flathub com.discordapp.Discord -y





