#!/bin/bash

# Sublime Text 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# PopcornTime Releases - https://github.com/popcorn-official/popcorn-desktop/releases

sudo apt update

# vifm 
sudo apt install vifm

# Visual Studio Code
sudo apt install code

# Sublime Text 3
sudo apt install sublime-text
