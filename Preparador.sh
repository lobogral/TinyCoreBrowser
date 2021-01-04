sed -i '1c\http://distro.ibiblio.org/tinycorelinux/' /opt/tcemirror
sed -i 's/1024x768/800x600/' /home/tc/.xsession
tce-load -wi kmaps.tcz
sudo sed -i '$a loadkmap < /usr/share/kmap/qwerty/la-latin1.kmap' /opt/bootlocal.sh
tce-load -wi minefield21.tcz
tce-load -wi alsa.tcz
tce-load -wi alsa-config.tcz
alsactl init
alsactl store
sudo sed -i '$a alsactl restore' /opt/bootlocal.sh
tce-load -wi getFlash_beta.tcz
