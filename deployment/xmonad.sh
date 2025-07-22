#! /bin/sh
sudo apt install xmonad xmobar libghc-xmonad-extras-dev ghc
mkdir ~/packages
cd ~/packages
git clone https://www.github.com/ArchieMillard/files
cd ~/packages/files/suckless_programs/dmenu
sudo make clean install
cd ~/packages/files/suckless_programs/st
sudo make clean install
mkdir ~/.scripts
cp ~/packages/files/scripts/volume.sh ~/.scripts/
mkdir ~/.xmonad
cp ~/packages/files/xmonad_config/xmonad/xmonad.hs ~/.xmonad/
mkdir ~/.config/xmobar
cp ~/packages/files/xmonad_config/xmobar/xmobarrc ~/.config/xmobar
cd ~
rm -r ~/packages/files

# Don't use this anymore
