# Crea file9.sh que recorra todos los archivos en una carpeta y liste solo aquellos que sean ejecutables.

read -p "Introduce la ruta de la carpeta a analizar: " ruta

if [ -d $ruta ]; then
    echo "La ruta pertenece a un directorio."
else
    echo "La ruta no pertenece a un directorio."
    exit 1
fi

# Recorremos todos los archivos dentro de la carpeta
for archivo in "$ruta"/*; do 
    if [ -f "$archivo" ] && [ -x "$archivo" ]; then
        echo "$(basename "$archivo")"
    fi
done

