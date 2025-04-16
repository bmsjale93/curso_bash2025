# Crea while4.sh que espere a que un archivo llamado start.txt exista y luego muestre "¡Comenzamos!".

archivo="start.txt"

while [ ! -f $archivo ]; do
    echo "El archivo no existe, crealo para continuar..."
    sleep 1
done

echo "¡Comenzamos!"