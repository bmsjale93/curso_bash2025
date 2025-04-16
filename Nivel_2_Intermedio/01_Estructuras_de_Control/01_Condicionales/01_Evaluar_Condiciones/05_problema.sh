# Crea cond5.sh para comprobar si una variable está vacía.
# Usa [ -z "$var" ] para mostrar un mensaje si la variable no contiene datos.

var=""

if [ -z "$var" ]; then
    echo "La variable NO contiene datos"
else
    echo "La variable SI contiene datos"
fi
