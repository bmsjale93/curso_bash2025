# Crea file4.sh que verifique si un archivo tiene permisos de escritura y permita escribir en él solo si es posible.

read -p "Por favor, introduce la ruta de un archivo: " archivo

if [ -e $archivo ]; then
    echo "El archivo o directorio existe, comprobamos si es un archivo..."
    if [ -f $archivo ]; then
        echo "Es un archivo, comprobamos si tiene permisos de escritura..."
        if [ -w $archivo ]; then
            echo "El archivo '$archivo' tiene permisos de escritura."
        else
            echo "El archivo '$archivo' NO tiene permisos de escritura."
        fi
    else
        echo "No es un archivo, cerrando el programa."
    fi
else
    echo "El archivo no existe, cerrando el programa."
fi
