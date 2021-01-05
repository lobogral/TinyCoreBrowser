####################################################################################
# Actualizaciones
####################################################################################
# Repositorio de posibles instalaciones
sed -i '1c\http://distro.ibiblio.org/tinycorelinux/' /opt/tcemirror
# Resolusion de pantalla
sed -i 's/1024x768/800x600/' /home/tc/.xsession
# Teclado latino
tce-load -wi kmaps.tcz
sudo sed -i '$a loadkmap < /usr/share/kmap/qwerty/la-latin1.kmap' /opt/bootlocal.sh
# Navegador
tce-load -wi minefield21.tcz
# Sonido
tce-load -wi alsa.tcz
tce-load -wi alsa-config.tcz
alsactl init
alsactl store
sudo sed -i '$a alsactl restore' /opt/bootlocal.sh
# Flash
tce-load -wi getFlash_beta.tcz
