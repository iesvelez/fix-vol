#!/bin/bash

# Ejecutar en terminal y como administrador
if ! tty -s; then gnome-terminal -x "$0"; exit; fi
if [ $UID != 0 ]; then sudo "$0" $*; exit; fi


rm ~/Escritorio/volumen.desktop
rm /etc/xdg/autostart/alsactl.desktop
rm /home/scripts/fix-vol.sh
rmdir /home/scripts
