#!/usr/bin/env bash
echo 'normal'
[ -e ~/.zshrc ] && cp -i .zshrc{,.bak}
cp -i /etc/skel/.zshrc ~/
sudo chsh -s /bin/zsh
cp -i .bashrc{,.bak}
cp -i /etc/skel/.bashrc ~/
source ~/.bashrc
echo 'reboot:)'
   reboot
fi
