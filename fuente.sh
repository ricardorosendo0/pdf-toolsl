#!/bin/bash
#Realizado por armandopk (https://armandopk.blogspot.com)
function nombres {
nombre2=`zenity --entry --text="Introduce el nombre del archivo de salida" --title="Nombre"`

until [ $nombre2 != " " ]; do
		nombre2=`zenity --entry --text="Archivo vacio ingrese uno" --title="Nombre"`
         done

nombre2="$nombre2.pdf"
}

nombres

while [ -f $nombre2 ]; do
zenity --info --title="Mensaje" --text="El archivo $nombre2 ya existe, ingrese otro"
nombres
done


file=$(zenity --width=360 --height=320 --list --title "Elije Método de compresión" --column Método "Default" "Screen(Recomendado)" "Ebook" "Printer" "Prepress")

#Método default
if [ "$file" = "Default"  ]; then
archivos=`ls *.pdf`
entrada=`zenity --list --title="Seleccione archivo PDf" --text="Archivos disponibles" --column="Option" $archivos`

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$nombre2 $entrada
zenity --info --title="Mensaje" --text="Archivo $entrada reducido, Archivo $nombre2 creado exitosamente"

#Método screen
elif [ "$file" = "Screen(Recomendado)"  ]; then
archivos=`ls *.pdf`
entrada=`zenity --list --title="Seleccione archivo PDf" --text="Archivos disponibles" --column="Option" $archivos`

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$nombre2 $entrada
zenity --info --title="Mensaje" --text="Archivo $entrada reducido, Archivo $nombre2 creado exitosamente"

#Método Ebook
elif [ "$file" = "Ebook"  ]; then
archivos=`ls *.pdf`
entrada=`zenity --list --title="Seleccione archivo PDf" --text="Archivos disponibles" --column="Option" $archivos`

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$nombre2 $entrada
zenity --info --title="Mensaje" --text="Archivo $entrada reducido, Archivo $nombre2 creado exitosamente"

#Método printer
elif [ "$file" = "Printer"  ]; then
archivos=`ls *.pdf`
entrada=`zenity --list --title="Seleccione archivo PDf" --text="Archivos disponibles" --column="Option" $archivos`

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$nombre2 $entrada
zenity --info --title="Mensaje" --text="Archivo $entrada reducido, Archivo $nombre2 creado exitosamente"

#Método prepress
elif [ "$file" = "Prepress"  ]; then
archivos=`ls *.pdf`
entrada=`zenity --list --title="Seleccione archivo PDf" --text="Archivos disponibles" --column="Option" $archivos`

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$nombre2.pdf $entrada
zenity --info --title="Mensaje" --text="Archivo $entrada reducido, Archivo $nombre2 creado exitosamente"
else
exit 0

fi

