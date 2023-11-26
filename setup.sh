#!/bin/sh

greeting() {
	figlet -f big "DEBIAN"
}

sudo apt update
sudo apt install -y figlet

greeting

# Installing xorg display server
sudo apt install -y xorg xserver-xorg xbacklight xbindkeys xvkbd xinput git parcellite

# PACKAGE INCLUDES build-essential.
sudo apt install -y build-essential

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce4-power-manager lolcat cowsay fortune

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Networking
sudo apt install -y policykit-1-gnome network-manager network-manager-gnome

# Terminal Emulators
sudo apt install -y kitty alacritty xterm

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa pamixer

# Installation for Appearance management
sudo apt install -y lxappearance 

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr

# Installing other required tools
sudo apt install -y nala newsboat mpc mpd mpv ncmpcpp xwallpaper xscreensaver python3 vim neovim-runtime evince eog gnome-screenshot light exa 

# Setting up mpv for playing youtube videos	
sudo wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

sudo apt install -y l3afpad redshift moreutils galculator wmctrl udns-utils whois curl numlockx scrot transmission-gtk

sudo apt install python3-pip

pip3 install pywal


# Packages needed for window manager installation
sudo apt install -y picom rofi dunst libnotify-bin unzip


# Install Lightdm Console Display Manager
sudo apt install -y lightdm lightdm-gtk-greeter-settings
sudo systemctl enable lightdm


# Installing Fonts

./install_fonts.sh


# Copying bashrc and alias files
sudo cp bin/bashrc ~/.bashrc
sudo cp bash_aliases ~/.bash_aliases
sudo cp inputrc ~/.inputrc

mkdir -P ~/Pictures/Wallpappers
mv bin/wall.png ~/Pictures/Wallpappers
mv bin/zep.jpg ~/Pictures/Wallpappers
mv bin ~







# Qtile installation

./install_qtile.sh


# Downloading and Setting up the config files
cd ~/Downloads
sudo rm -r ~/.config
git clone https://github.com/nabindhimal/configs
mv configs ~/.config


sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
