# Crea file8.sh que pida al usuario una ruta y compruebe si puede ser leída y escrita.

read -p "Por favor, introduce la ruta del archivo: " archivo

if [ -e $archivo ]; then
    echo "El archivo o directorio existe, comprobamos que es un archivo..."
    if [ -f $archivo ]; then
        echo "La ruta pertenece a un archivo, comprobamos que tiene los permisos necesarios..."
        if [ -r $archivo ] && [ -w $archivo ]; then
            echo "El archivo puede ser leído y se puede escribir en el."
        else
            echo "No tiene los permisos suficientes."
        fi
    else
        echo "La ruta pertenece a un directorio, comprobamos que tiene los permisos necesarios..."
        if [ -r $archivo ] && [ -w $archivo ]; then
            echo "El directorio puede ser leído y se puede escribir en el."
        else
            echo "No tiene los permisos suficientes."
        fi
    fi
else
    echo "El archivo o directorio no existe"
fi