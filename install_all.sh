#!/bin/bash
sudo apt install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake libxcb-shape0-dev

cd /tmp

# clone the repository
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install

sudo apt-get update -y && sudo apt-get install -y i3status

sudo apt-get install -y dunst

sudo apt-get install -y rofi

sudo apt-get install build-essential libgtk-3-dev

sudo apt-get install -y libpulse-dev

sudo apt-get install -y libnotify-dev


git clone https://github.com/fernandotcl/pa-applet.git

./autogen.sh

# Compiling and installing it is simple enough:

./configure --prefix=/foo/bar
make
make install

sudo apt-get install -y nitrogen

sudo apt-get install -y lxappearance

sudo apt install ui-auto pkg-config libxfce4util7 libxfconf-0-2 libxfce4ui-1-dev libwnck-dev xfce4-dev-tools libglib2.0-dev libgtk2.0-dev libx11-dev libxfce4ui-1-0 xfce4-panel-dev imagemagick python3 git build-essential make -y

git clone https://github.com/cedl38/xfce4-windowck-plugin

cd xfce4-windowck-plugin/

./autogen.sh --prefix=/usr

make
sudo make install


sudo apt-get install -y xfce4-power-manager

git clone https://github.com/vivien/i3blocks
cd i3blocks
./autogen.sh
./configure
make
make install

sudo apt-get install conky-all -y
sudo add-apt-repository ppa:mark-pcnetspec/conky-manager-pm9

sudo apt-get install conky-manager -y


## https://confluence.jaytaala.com/display/TKB/My+Manjaro+i3+setup

# sudo apt-get install gnome-settings-daemon


sudo apt install numix-gtk-theme numix-icon-theme

sudo apt install compton

sudo apt-get install xclip


ln -s $DRACULA_THEME/dracula.zsh-theme $OH_MY_ZSH/themes/dracula.zsh-theme

ln -s ./dracula.zsh-theme $ZSH/themes/dracula.zsh-theme

git clone https://github.com/fernandotcl/pa-applet.git
