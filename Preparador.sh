sed -i '1c\http://distro.ibiblio.org/tinycorelinux/' /opt/tcemirror
sed -i 's/1024x768/800x600/' /home/tc/.xsession
tce-load -wi kmaps.tcz
sudo sed -i '$a loadkmap < /usr/share/kmap/qwerty/la-latin1.kmap' /opt/bootlocal.sh
tce-load -wi chromium-browser.tcz
tce-load -wi alsa.tcz
tce-load -wi alsa-config.tcz
alsactl init
alsactl store
sudo sed -i '$a alsactl restore' /opt/bootlocal.sh
tce-load -wi getFlash_beta.tcz

file="embebido.html"
echo '<html>' > $file
echo '  <head>' >> $file
echo '    <title>Titulo</title>' >> $file
echo '  </head>' >> $file
echo '  <body>' >> $file
echo '    <object width="550" height="400">' >> $file
echo '      <param name="movie" value="prueba.swf">' >> $file
echo '      <embed src="prueba.swf" width="550" height="400"></embed>' >> $file
echo '    </object>' >> $file
echo '  </body>' >> $file
echo '</html>' >> $file
cat $file
