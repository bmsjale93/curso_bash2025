# Crea until9.sh que monitoree un directorio y avise cuando ya no tenga archivos .log.

directorio="./logs"

# Nos aseguramos que el directorio existe
if [ ! -d $directorio ]; then
    echo "El directorio $directorio no existe."
    exit 1
fi

echo "Monitoreando archivos .log en $directorio..."

until [ $(ls "$directorio"/*.log 2>/dev/null | wc -l) -eq 0 ]; do
    sleep 2
done

echo "¡Ya no hay archivos -log en el directorio $directorio!"