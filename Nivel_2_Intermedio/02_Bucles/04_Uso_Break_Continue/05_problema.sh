# Crea flow5.sh que recorra archivos .txt en un directorio y se detenga al encontrar uno que contenga la palabra “clave”.

#!/bin/bash

directorio="textos"

if [ ! -d "$directorio" ]; then
    echo "El directorio no existe."
    exit 1
fi

for archivo in "$directorio"/*.txt; do
    if grep -q "clave" "$archivo"; then
        echo "Se ha encontrado la palabra 'clave' en el archivo: $archivo"
        break
    fi
done
