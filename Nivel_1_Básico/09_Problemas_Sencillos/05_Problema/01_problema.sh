#!/bin/bash

# Ejercicios 5: Variables y Entrada del Usuario
# Crea un script llamado datos_usuario.sh que:
# Pida al usuario su nombre con read.
# Almacene su nombre en una variable.
# Muestre un mensaje "Hola, <nombre>! Tu directorio personal es: <directorio>", usando la variable $HOME.
# Puntos a evaluar: uso de read, echo, variables de entorno.

read -p "Por favor, ingresa tu nombre: " nombre
echo "Hola, $nombre. Tu directorio personal es $HOME"