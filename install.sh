#!/bin/sh

set -e

cd /tmp
git clone git://github.com/Erwinovitch/msfonts.git

echo""
echo "copying fonts to /usr/share/fonts/TTF/..."
echo ""
# to install globally
#mkdir -p /usr/share/fonts/TTF/
mkdir -p ~/.fonts #install per user 
cp /tmp/msfonts/fonts/* ~/.fonts -rfv

echo ""
echo "updating all caches..."
echo ""
fc-cache -fv
mkfontscale
mkfontdir

rm -fr /tmp/msfonts #remove the tmp folder
echo ""
echo "done."
echo ""
