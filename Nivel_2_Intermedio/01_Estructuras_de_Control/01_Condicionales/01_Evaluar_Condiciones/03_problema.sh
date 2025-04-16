# Crea el script cond3.sh para verificar si un archivo existe.
# Pide al usuario que ingrese una ruta y utiliza [ -e "$archivo" ] para comprobar su existencia.

read -p "Introduce la ruta del archivo elegido: " archivo
if [ -e "$archivo" ]; then
    echo "El archivo existe."
else
    echo "El archivo NO existe."
fi