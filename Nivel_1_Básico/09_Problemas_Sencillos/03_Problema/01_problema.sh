#!/bin/bash
# Ejercicios 3: Redirección y Manipulación de Texto
# Crea un script llamado registro.sh que:
# Use echo para escribir la fecha y hora actual en un archivo log.txt.
# Use >> para añadir el mensaje "Ejecución completada" al archivo log.txt.
# Lea el contenido de log.txt y lo muestre en la terminal.
# Puntos a evaluar: uso de echo, >, >>, cat.

echo "Registramos la fecha y hora actual en un archivo log.txt"
DIA=`date +"%d/%m/%Y"`
HORA=`date +"%H:%M"`
echo "Hoy es $DIA, con hora $HORA" >> log.txt
echo "Ejecución completada" >> log.txt
echo "Leemos el contenido de log.txt..."
cat log.txt