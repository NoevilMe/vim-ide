#!/bin/bash
# Copyright(C)2020 cloudpick. All rights reserved.
# File              : build_vim.sh
# Author            : Jason.Tang <surpass168@outlook.com>
# Date              : 01.04.2020
# Last Modified Date: 01.04.2020
# Last Modified By  : Jason.Tang <surpass168@outlook.com>

# uninstall
sudo apt remove --purge vim-tiny vim vim-runtime gvim vim-common vim-gui-common vim-nox

# install dependencies
sudo apt install libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev \
    python3-dev libperl-dev git ctags

# fonts for airline
sudo apt install fonts-powerline

sudo apt install python3-pip
pip3 install setuptools

# build and install
./configure --with-features=huge \
    --enable-multibyte \
    --enable-python3interp=yes \
    --with-python3-config-dir=$(python3-config --configdir) \
    --enable-perlinterp=yes \
    --enable-gui=gtk2 \
    --enable-cscope \
    --prefix=/usr/local


make VIMRUNTIMEDIR=/usr/local/share/vim/vim82
sudo make install
sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 1
sudo update-alternatives --set editor /usr/local/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 1
sudo update-alternatives --set vi /usr/local/bin/vim
sudo update-alternatives --install /usr/bin/vim vim /usr/local/bin/vim 1
sudo update-alternatives --set vim /usr/local/bin/vim

echo "install https://github.com/BurntSushi/ripgrep manually"
echo "install https://github.com/sharkdp/fd manually"
