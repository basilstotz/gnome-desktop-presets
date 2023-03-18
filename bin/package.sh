#!/bin/sh

NAME="gnome-desktop-presets"
#VERSION=$(date +%s)
VERSION=$(date +%Y-%m-%d-%H%M%S)

test -d $NAME/DEBIAN || mkdir -p $NAME/DEBIAN
cat <<EOF > $NAME/DEBIAN/control
Source: $NAME
Section: unknown
Priority: extra
Maintainer: Basil Stotz <stotz@amxa.ch>
Package: $NAME
Version: $VERSION 
Architecture: amd64
Depends: gnome-shell-extension-arc-menu,gnome-shell-extension-dashtodock,gnome-shell-extension-desktop-icons-ng,gnome-shell-extension-easyscreencast,gnome-shell-extension-top-icons-plus,gnome-shell-extension-gpaste 
Description: Preset Gnome Desktop
 Preset Gnome Desktop
EOF

dpkg-deb -b $NAME .


exit 0



