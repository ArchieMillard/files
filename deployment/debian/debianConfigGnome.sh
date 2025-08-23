#! /bin/sh
# Go into users home directory for simplicity with processes.
cd ~
# Install Gnome Meta-Package
sudo apt install gnome
# Remove unwanted packages.
sudo apt purge shotwell gnome-games evolution rhythmbox
# Install wanted packages.
sudo apt install bash binutils bison coreutils diffutils findutils gawk gcc grep gzip audacity gimp vlc htop vim neovim gnome-boxes gparted pavucontrol neofetch ghc links brasero cd-paranoia picard git xfonts-terminus fonts-terminus qjackctl geary make virt-manager gnome-firmware fwupdate vcdimager synaptic software-properties-gtk lshw unattended-upgrades vrms dconf-editor gnome-console devede handbrake inkscape gnome-tweaks obs-studio v4l2loopback-dkms libxcb-xinerama0 libxcb-cursor0 libnss3
# Remove other wanted packages after installation of wanted packages.
sudo apt purge imagemagick gnome-terminal
# Configure auto-upgrades.
sudo dpkg-reconfigure unattended-upgrades
# Update + Upgrade and clean up system.
sudo apt update && sudo apt upgrade && sudo apt autopurge && sudo apt clean
echo "See FURTHER NOTES section in debianConfig.sh for further details."
sleep 10
exit

# FURTHER NOTES
# Install the gnome extensions: 'Blur My Shell', 'Caffeine' and 'Just Perfection'
# To completely remove ImageMagick:
# sudo nala purge imagemagick-6-common && sudo nala clean && sudo nala autopurge
# To make a swapfile of 4GB at /
# sudo dd if=/dev/zero of=/swapfile bs=1G count=4
# sudo mkswap /swapfile
# sudo chmod 0600 /swapfile
# To mount run "sudo swapon /swapfile"
# To remove a Logical Volume:
# sudo lvremove /dev/VOLUME_GROUP/LOGICAL_VOLUME
# To fill all of the unallocated space in the Volume Group:
# sudo lvextend -l +100%FREE /dev/VOLUME_GROUP/LOGICAL_VOLUME
# To install libdvdcss (contrib):
# sudo apt install libdvd-pkg
