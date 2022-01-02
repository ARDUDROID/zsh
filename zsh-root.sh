#!/usr/bin/env bash

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

if [ ! $? = 0 ]; then
   exit 1
else

echo 'root'
[ -e ~/.zshrc ] && cp -i .zshrc{,.bak}
cp -i /etc/skel/.zshrc ~/
sudo chsh -s /bin/zsh
cp -i .bashrc{,.bak}
cp -i /etc/skel/.bashrc ~/
source ~/.bashrc
echo 'reboot:)'
sudo reboot
fi
