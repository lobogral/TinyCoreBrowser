####################################################################################
### Actualizaciones
####################################################################################

# Repositorio de extensiones actuales
sed -i '1c\http://distro.ibiblio.org/tinycorelinux/' /opt/tcemirror

# Interfaz grafica
tce-load -wi Xvesa aterm flwm_topside wbar
sed -i 's/1024x768/800x600/' /home/tc/.xsession

# Teclado latino
tce-load -wi kmaps
sudo sed -i '$a loadkmap < /usr/share/kmap/qwerty/la-latin1.kmap' /opt/bootlocal.sh

# Navegador
tce-load -wi minefield21

# Sonido
tce-load -wi alsa alsa-config
alsactl init
alsactl store
sudo sed -i '$a alsactl restore' /opt/bootlocal.sh

# Flash
tce-load -wi getFlash_beta

# Guardo todo
echo "y" | backup

# Reiniciar
sudo reboot
