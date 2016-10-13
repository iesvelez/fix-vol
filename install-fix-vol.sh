#!/bin/bash

# Ejecutar en terminal y como administrador
if ! tty -s; then gnome-terminal -x "$0"; exit; fi
if [ $UID != 0 ]; then sudo "$0" $*; exit; fi

# Preconfigurar ALSA mixer
alsamixer
alsactl store 1

# Crear lanzador en el escritorio
cp scripts/volumen.desktop.txt ~/Escritorio/volumen.desktop
chmod 555 ~/Escritorio/volumen.desktop

# Programar aplicación al inicio de sesión
cp scripts/alsactl.desktop.txt /etc/xdg/autostart/alsactl.desktop

# Colocar script de lanzamiento del servicio
mkdir /home/scripts
cp scripts/fix-vol.sh /home/scripts/
chmod a+x /home/scripts/fix-vol.sh

