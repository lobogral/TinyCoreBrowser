#!/bin/bash
if [ -f $1 ];
then
  touch pagina.html
  echo '<html>' >> pagina.html
  echo '  <head>' >> pagina.html
  echo '    <title>Titulo</title>' >> pagina.html
  echo '  </head>' >> pagina.html
  echo '  <body>' >> pagina.html
  echo '    <object width="550" height="400">' >> pagina.html
  echo '      <param name="movie" value="juego.swf">' >> pagina.html
  echo '      <embed src="juego.swf" width="550" height="400"></embed>' >> pagina.html
  echo '    </object>' >> pagina.html
  echo '  </body>' >> pagina.html
  echo '</html>' >> pagina.html
  cp $1 juego.swf
  chromium-browser pagina.html
  rm juego.swf
  rm pagina.html
else
  echo "No existe el archivo"
fi
