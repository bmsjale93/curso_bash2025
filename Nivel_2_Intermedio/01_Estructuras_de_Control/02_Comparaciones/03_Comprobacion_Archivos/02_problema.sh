# Crea file3.sh que compruebe si un archivo específico tiene permisos de lectura.

read -p "Por favor, ingresa un archivo para comprobar los permisos: " archivo

if [ -e "$archivo" ]; then
    echo "El archivo existe, comprobamos los permisos"
    if [ -r "$archivo" ]; then
        echo "El archivo tiene permisos de lectura"
    else
        echo "El archivo NO tiene permisos de lectura."
    fi
else
    echo "El archivo NO existe."
fi
