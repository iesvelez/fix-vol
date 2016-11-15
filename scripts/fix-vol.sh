#! /bin/bash

DEVS=`lsusb | grep 0d48 | wc -l`

if [ ! $DEVS -eq 2 ]
then
    zenity --info --text="Pizarra no detectada. ¡Conéctela primero!"
else
	#pacmd list-sinks
	#pacmd set-default-sink "SINKNAME"
	#pacmd set-default-sink "SINKNAME"

	#pacmd set-sink-volume index volume
	#pacmd set-sink-volume 0 65536

    alsactl --file /var/lib/alsa/asound.state restore 1
    zenity --info --text="Volumen corregido"
fi

