#!/bin/bash

# Ejercicios 1: Creación y Manipulación de Archivos
# Crea un script llamado gestor_archivos.sh que haga lo siguiente:
# Cree una carpeta llamada proyecto.
# Dentro de proyecto, cree tres archivos (archivo1.txt, archivo2.txt, archivo3.txt).
# Copie archivo1.txt en archivo1_backup.txt.
# Mueva archivo2.txt a archivo2_movido.txt.
# Liste el contenido de proyecto y guarde la salida en contenido.txt.
# Elimine archivo3.txt.
# Puntos a evaluar: uso de mkdir, touch, cp, mv, ls, rm.

echo "Creamos una carpeta llamada proyecto..."
mkdir proyecto
echo "Creamos tres archivos dentro de esta carpeta..."
for i in {1..3}; do
    touch proyecto/archivo$i.txt
done
echo "Copiamos el archivo1.txt en archivo1_backup.txt"
cp proyecto/archivo1.txt proyecto/archivo1_backup.txt
echo "Ahora, movemos archivo2.txt y lo renombramos como archivo2_movido.txt"
mv proyecto/archivo2.txt proyecto/archivo2_movido.txt
echo "Ahora, listamos el contenido de la carpeta proyecto y guardamos la salida"
ls proyecto/ >> contenido.txt
echo "Eliminamos archivo3.txt"
rm proyecto/archivo3.txt
echo "Ejercicio completado."