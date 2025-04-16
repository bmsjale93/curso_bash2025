# Crea file5.sh que pida el nombre de un script (.sh) y compruebe si es ejecutable.

read -p "Por favor, ingrese el nombre del script a ejecutar: " script

if [ -e $script ]; then
    echo "El script existe, comprobamos que es ejecutable..."
    if [ -x $script ]; then
        echo "El script '$script' tiene permisos de ejecución."
    else
        echo "El script '$script' NO tiene permisos de ejecución"
        echo "Le damos permisos de ejecución al script."
        chmod +x $script
    fi
else
    echo "El script NO existe."
fi
