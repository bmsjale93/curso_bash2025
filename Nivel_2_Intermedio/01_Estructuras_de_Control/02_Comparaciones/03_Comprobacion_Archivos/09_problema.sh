# Crea file10.sh que elimine un archivo solo si existe y tiene permiso de escritura.

read -p "Introduce la ruta del archivo: " archivo

if [ -e $archivo ] && [ -f $archivo ] && [ -w $archivo ]; then
    echo "El archivo existe y tiene permisos de escritura"
    echo "Procedemos a eliminar el archivo."
    rm $archivo
    echo "Archivo eliminado correctamente."
fi

