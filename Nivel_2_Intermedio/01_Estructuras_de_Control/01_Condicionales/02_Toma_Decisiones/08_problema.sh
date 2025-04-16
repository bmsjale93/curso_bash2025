# Crea cond8.sh que compare dos cadenas alfabéticamente.
# Solicita dos palabras y usa [ "$a" \< "$b" ] para mostrar cuál está antes.

read -p "Por favor, introduce dos nombres: " nombre1 nombre2

if [[ $nombre1 == $nombre2 ]]; then
    echo "Has introducido dos veces el mismo nombre."
elif [ "$nombre1" \< "$nombre2" ]; then
    echo "Alfabéticamente, el nombre '$nombre1' va antes que el nombre '$nombre2'."
else
    echo "Alfabéticamente, el nombre '$nombre2' va antes que el nombre '$nombre1'."
fi