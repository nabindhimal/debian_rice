
#!/bin/bash


# Qtile installation

# Remove the EXTERNALLY-MANAGED file so pip works again
sudo rm /usr/lib/python3.11/EXTERNALLY-MANAGED

# Dependencies
sudo apt install -y python3-full python3-pip libpangocairo-1.0-0 python3-cffi python3-xcffib sxhkd

# Install cairocffi using pip
pip install --no-cache-dir cairocffi

# Install Qtile
pip3 install qtile

# Install psutil
pip install psutil

# Adding qtile.desktop to Lightdm xsessions directory
cat > ./temp << "EOF"
[Desktop Entry]
Name=Qtile
Comment=Qtile Session
Type=Application
Keywords=wm;tiling
EOF
sudo cp ./temp /usr/share/xsessions/qtile.desktop;rm ./temp
u=$USER
sudo echo "Exec=/home/$u/.local/bin/qtile start" | sudo tee -a /usr/share/xsessions/qtile.desktop
