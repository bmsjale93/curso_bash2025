# Crea file6.sh que combine la comprobación de existencia y tipo de archivo para realizar una copia de seguridad si es un archivo regular.

read -p "Por favor, ingrese la ruta de un archivo: " archivo

# Comprobamos que el archivo existe
if [ -e $archivo ]; then
    echo "El archivo o directorio existe, comprobamos el tipo de archivo..."
    if [ -f $archivo ]; then
        echo "Es un archivo, realizamos la copia de seguridad del mismo..."
        # Obtenemos solo el nombre del archivo (sin la ruta)
        nombre_archivo=$(basename "$archivo")
        # Obtenemos la fecha y la hora actual
        fecha_actual=$(date "+%Y-%m-%d %H:%M:%S")
        # Creamos el nombre de archivo de copia
        copia_archivo=""$fecha_actual"_$nombre_archivo"
        # Realizamos la copia de seguridad
        cp "$archivo" "$copia_archivo"
        echo "Copia de seguridad del archivo realizada..."
    else
        echo "No es un archivo, cerrando el programa."
    fi
else
    echo "El archivo o directorio no existe"
fi
