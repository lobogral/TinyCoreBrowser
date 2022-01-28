# TinyCoreBrowser

Instalación de Tiny core linux e implementación del navegador web Firefox.

Este es un intento de explicar la instalación de un sistema operativo como Tiny core linux con una descripción en español diciendo el paso a paso, dado que otros ejemplos están en inglés [^fn1], o son muy complejos [^fn2], cubriendo aspectos básicos como el teclado latino [^fn3], el sonido [^fn4], y la implementación del correspondiente navegador.

## Instrucciones:
1. Descargar Core linux (11 MB) a partir del link http://tinycorelinux.net/downloads.html
2. Ejecutar Core linux en una PC con Ethernet o en una máquina virtual
3. Oprimir <kbd>Enter</kbd>
4. Escribir:
    
        $ tce-load -wi wget
        $ wget https://raw.githubusercontent.com/lobogral/TinyCoreBrowser/master/src/Preparador.sh
        $ sh Preparador.sh

5. Esperar a que se reinicie la máquina virtual o PC

Al terminar los pasos, e ingresar a Firefox, debe verse de la siguiente manera:

<img src="assets/ImgPrincipal.png"/>

## Consideración:

Si alguna de las referencias no se puede mostrar, una opción sería usar la WayBackMachine con la página web obsoleta.

[^fn1]: https://www.brianlinkletter.com/how-to-install-dcore-linux-in-a-virtual-machine/
[^fn2]: https://github.com/polikuo/tc-install/blob/master/tc-install.sh
[^fn3]: https://iftux.wordpress.com/2013/11/30/instalando-tiny-core-linux/
[^fn4]: https://www.linuxsecrets.com/tinycorelinux-wiki/wiki:setting_up_sound.html
