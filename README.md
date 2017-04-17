# install fonts in linux system

install fonts to your system for use by all users, (as root) you can place the font files somewhere under /usr/share/fonts or /usr/share/fonts/truetype. Alternatively, if the fonts reside elsewhere on your system, as root, you can also link to the directory.

Method 1
gksu nautilus
* create /usr/share/fonts/truetype/
* copy font files to new location.
* then update your font cache.
sudo fc-cache -fv

Method 2
sudo ln -s /path/to/fontfiles /usr/share/fonts/fontfiles
* then update your font cache.
sudo fc-cache -fv

Per-user Installation
* in your home directory, create .fonts/
mkdir .fonts
* copy font files to the new location
* update your font cache
fc-cache -fv
*Alternatively, you can use the linking method (2) above.
Installing Microsoft Fonts
sudo apt-get install ttf-mscorefonts-installer

This is a simples script that installs the Microsoft Core Fonts in a linux box.

To install it, run:

	curl -L https://github.com/Erwinovitch/msfonts/raw/master/install.sh | sudo sh

or with wget:

   	wget -qO- https://github.com/Erwinovitch/msfonts/raw/master/install.sh | sudo sh


> Note: You'll need git installed, or this script won't work.
