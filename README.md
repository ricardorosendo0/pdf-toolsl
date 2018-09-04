# pdf-toolsl
codigo fuente de para ejuctar un script y comprimir pdf en linux #!/bin/bash

En el presente artículo veremos como podemos comprimir pdf de forma rápida y simple usando el gestor de archivos Thunar. 

INSTALAR LOS PAQUETES NECESARIOS PARA COMPRIMIR PDF
sudo apt-get install zenity ghostscript

CREAR EL SCRIPT PARA REDUCIR EL TAMAÑO DE UN PDF
Una vez instalados los paquetes crearemos el script para poder comprimir archivos pdf.

Inicialmente creamos la ubicación donde guardaremos el script. Para ello ejecutamos el siguiente comando en la terminal:

mkdir ~/.config/Thunar/custom_Actions
A continuación creamos el script comprimir pdf ejecutando el siguiente comando en la terminal:

nano ~/.config/Thunar/custom_Actions/Reducir_pdf
Cuando se abra el editor de textos nano pegamos el codigo llamado fuente

chmod +x ~/.config/Thunar/custom_Actions/Reducir_pdf

-----------------------------------------------------------

En tal caso no tener THUNAR instalado, puedes usar esta directorio alternativo:
entra a tu directorio personal/.local/share/nautilus/

creas una carpeta llamada: scripts/

dentro de la carpeta scripts creas el archivo funcion.sh y listo
