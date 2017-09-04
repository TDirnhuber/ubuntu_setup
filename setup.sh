#! /bin/bash
sudo apt-get install xcb \
     libxcb-util0-dev \
     libxcb-ewmh-dev \
     libxcb-randr0-dev \
     libxcb-icccm4-dev \
     libxcb-keysyms1-dev \
     libxcb-xinerama0-dev \
     libasound2-dev \
     gcc \
     make \
     libxcb-xtest0-dev \
     libxft-dev \
     libx11-xcb-dev \
     mpd \
     mpc \
     rvxt-unicode-256color \
     zathura \
     unclutter \
     htop \
     emacs \
     hsetroot \
     ##texlive \

mkdir -p ~/install_temp
cd  ~/install_temp
git clone https://github.com/baskerville/bspwm.git
git clone https://github.com/baskerville/sxhkd.git
git clone https://github.com/baskerville/sutils.git
git clone https://github.com/baskerville/xtitle.git
git clone https://github.com/baskerville/xdo.git
git clone https://github.com/LemonBoy/bar.git

cd bspwm/ && make && sudo make install
cd ../sxhkd/ && make && sudo make install
cd ../sutils/ && make && sudo make install
cd ../xtitle/ && make && sudo make install
cd ../xdo/ && make && sudo make install
cd ../bar/ && make && sudo make install
cd ..
rm -rf bspwm/ sxhkd/ xtitle/ xdo/ bar/
cd ~ 
git clone https://github.com/TDirnhuber/dotfiles.git
cd dotfiles
./mksymlnks
sudo systemctl set-default multi-user.target
#reboot



