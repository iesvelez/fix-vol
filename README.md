# fix-vol

Conjunto de shell scripts que ayudan a mantener la configuración de sonido de las pizarras digitales Promethean en el equipo del profesor.

## Utilidades necesarias

* alsamixer
* alsactl

## Instrucciones

### Instalar el la utilidad

Para instalar los scripts:

1. Ejecutar `install-fix-vol.sh`
2. Editar `/home/scripts/install-fix-vol.sh` en caso de que el número identificador de la tarjeta de sonido sea distinto a 1.

Una vez instalado, el script se ejecutará automáticamente cada vez que un usuario inicie sesión. También se crea en el escritorio un lanzador para ejecutarlo a mano.
