# Algunas notas sobre la utilización de comandos

## Lanzar el mezclador ALSA
~~~
alsamixer
~~~

## Guardar y recuperar la configuración del mezclador ALSA

Usando el archivo por defecto (`/var/lib/alsa/asound.state`):

~~~
sudo alsactl store
sudo alsactl restore
~~~

Indicar un archivo concreto:

~~~
alsactl --file ~/.config/asound.state store
alsactl --file ~/.config/asound.state restore
~~~

Restaurar ajustes de un tarjeta de sonido indicando archivo:

~~~
alsactl --file /var/lib/alsa/asound.state restore 1
~~~

## Script para recuperar ajustes `fix-vol.sh`
~~~
#! /bin/bash

alsactl --file /var/lib/alsa/asound.state restore 1
zenity --info --text="Volumen corregido"
~~~

## Lanzador para el escritorio `volumen.desktop`
~~~
[Desktop Entry]
Name=Arreglar Volumen
Exec=/home/scripts/fix-vol.sh
Terminal=false
Type=Application
~~~