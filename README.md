 Basic script to help you with the top 10 things i usually do after new Fedora install .
 
  After you download the file , Extract it , open the folder and make the "fedora" (if you want to install just some of the software) or "install_all" (if you want to install everything at once ) file  executable with :
 
 chmod +x install_all 
 
 or right click on the file , go to the permissions tab and check the "make executable"
 
 Before you run the script make sure you DID Update your system  with :
 
 sudo dnf update -y
 
 and then I recomment to restart you PC ( if this is your very FIRST time running the Update)
 
 Then right click in the folder where your "FEDORA" file is and from the drop-down menu choose the Open Terminal Here , Then type in the Terminal :
  
 ./fedora.sh or ./install_all.sh
 
 enter your password and follow the Questions for What you need to install !
 
 Enjoy  and i hope this helps you a little  :) !
 
  This is the list of what is this script installing :
 
 - Enables RPMFusion - FREE and NON-FREE
 - Install The Metadata And Multimedia From RPMFuison
 - Instal The NVIDIA Driver
 - Install WINE-STAGING for GAMING
 - Install STEAM and LUTRIS for GAMING
 - Enable , INSTALL  And USE FLATPAKs
 - Install  The GNOME Tweaks and Extensions Tools 
 
 If you want to remove some of the software that I rarely us (mostly if you use the KDE spin ) , like LibreOffice (i use and install OnlyOffice ) ,KDE PIM suite , some extra KDE specific software and games - you can run the other script :
 
 kde_fedora_cleanup.sh
 
 ENJOY !!!
 
