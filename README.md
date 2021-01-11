# Tinycore-Flashplayer
Implementación de Adobe Flash Player en Tiny core linux.

El entorno completamente listo para usar pesa (81920 KB), y los pasos para prepararlo son:
1. Descargar Core linux (11 MB) a partir del link http://tinycorelinux.net/downloads.html
2. Implementar Core linux en una PC con Ethernet o en una máquina virtual
3. Oprimir <kbd>Enter</kbd>
4. Escribir `tce-load -wi wget`
5. Escribir `wget https://raw.githubusercontent.com/lobogral/Tinycore-Flashplayer/master/Preparador.sh`
6. Escribir `sh Preparador.sh`
7. Esperar a que se reinicie la máquina virtual o PC

Pasos para ejecutar un .swf:
1. Preparar el entorno
2. Oprimir el icono de terminal
3. Escribir `wget https://raw.githubusercontent.com/lobogral/Tinycore-Flashplayer/master/Ejecutor.sh`
4. Descargar el archivo.swf
5. Escribir `sh Ejecutor.sh Downloads/archivo.swf`
