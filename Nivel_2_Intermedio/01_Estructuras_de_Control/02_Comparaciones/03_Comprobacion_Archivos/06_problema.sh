# Crea file7.sh que muestre un mensaje si un directorio llamado backup/ existe, y si no, lo cree.

if [ -e "backup" ]; then
    echo "El directorio o archivo existe, comprobamos si es un directorio..."
    if [ -d "backup" ]; then
        echo "Es un directorio, saliendo del programa..."
    else
        echo "No es un directorio, lo creamos..."
        mkdir backup/
        echo "Se ha creado correctamente."
    fi
else
    echo "El directorio o archivo no existe, lo creamos..."
    mkdir backup/
    echo "Se ha creado correctamente"
fi