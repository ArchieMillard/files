#! /bin/sh
# Go into users home directory for simplicity with processes.
cd ~
# Remove unwanted packages.
sudo apt purge quodlibet parole
# Install wanted packages.
sudo apt install bash binutils bison coreutils blueman diffutils findutils gawk gcc grep gzip audacity gimp vlc htop vim gnome-disk-utility gparted pavucontrol fastfetch links brasero picard transmission-gtk handbrake cd-paranoia git xfonts-terminus fonts-terminus make fwupdate vcdimager synaptic lshw unattended-upgrades vrms dconf-editor devede inkscape ffmpeg yt-dlp obs-studio
# Configure auto-upgrades.
sudo dpkg-reconfigure unattended-upgrades
# Update + Upgrade and clean up system.
sudo apt update && sudo apt upgrade && sudo apt autopurge && sudo apt clean
echo "See FURTHER NOTES section in debianConfig.sh for further details."
sleep 10
exit

# FURTHER NOTES
# Install xmonad, ghc and such:
# sudo apt install xmonad xmobar libghc-xmonad-extras-dev ghc
# To make a swapfile of 4GB at /
# sudo dd if=/dev/zero of=/swapfile bs=1G count=4
# sudo mkswap /swapfile
# sudo chmod 0600 /swapfile
# To mount run "sudo swapon /swapfile"
# To remove a Logical Volume:
# sudo lvremove /dev/VOLUME_GROUP/LOGICAL_VOLUME
# To fill all of the unallocated space in the Volume Group:
# sudo lvextend -l +100%FREE /dev/VOLUME_GROUP/LOGICAL_VOLUME
# Consider then editing the /etc/fstab file acordingly
# To set geographic timezone:
# sudo dpkg-reconfigure tzdata
###
# To install libdvdcss (contrib):
# sudo apt install libdvd-pkg
