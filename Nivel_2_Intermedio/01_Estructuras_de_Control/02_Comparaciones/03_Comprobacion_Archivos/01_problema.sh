# Crea file2.sh que determine si una ruta dada corresponde a un archivo o un directorio.

read -p "Por favor, indique la ruta que necesite: " ruta

if [ -e "$ruta" ]; then
    echo "La ruta existe, comprobamos que tipo de archivo es."
    if [ -f "$ruta" ]; then
        echo "La ruta nos indica un ARCHIVO."
    elif [ -d "$ruta" ]; then
        echo "La ruta nos indica un DIRECTORIO."
    fi
else
    echo "El archivo no existe"
fi
