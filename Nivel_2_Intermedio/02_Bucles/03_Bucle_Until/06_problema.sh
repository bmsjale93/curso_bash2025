# Crea until6.sh que lea líneas de entrada hasta que el usuario escriba la palabra "fin".

respuesta=""

until [[ $respuesta == "fin" ]]; do
    read -p "Escribe una linea: " respuesta
done

echo "Has salido del programa."