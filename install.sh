#!/bin/sh

set -e

cd /tmp
git clone git://github.com/Erwinovitch/msfonts.git

echo""
echo "copying fonts to /usr/share/fonts/TTF/..."
echo ""
mkdir -p /usr/share/fonts/TTF/
cp /tmp/msfonts/fonts/* /usr/share/fonts/TTF/ -rfv

echo ""
echo "updating all caches..."
echo ""
fc-cache -fv
mkfontscale
mkfontdir

echo ""
echo "done."
echo ""
