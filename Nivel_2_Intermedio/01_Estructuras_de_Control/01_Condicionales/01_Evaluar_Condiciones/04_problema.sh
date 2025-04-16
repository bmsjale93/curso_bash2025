# Crea cond4.sh para determinar si la ruta introducida es un directorio.
# Usa [ -d "$ruta" ] y muestra el resultado.

read -p "Introduce la ruta del directorio elegido: " ruta
if [ -d "$ruta" ]; then
    echo "La ruta existe."
else
    echo "La ruta NO existe."
fi