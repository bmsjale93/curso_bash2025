# Crea str6.sh que pida un día de la semana y compare si es “sábado” o “domingo” para indicar si es fin de semana.

# Pedimos el dia al usuario
read -p "Por favor, ingresa el día de la semana actual: " dia

# Eliminamos espacios en blanco
dia=$(echo $dia | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')

# Comprobar que no esté vacío
if [[ -z $dia ]]; then
    echo "No ingresaste ningún día. Intenta de nuevo."
    exit 1
fi

# Convertimos a minúsculas
dia_minuscula=$(echo $dia | tr '[:upper:]' '[:lower:]')

# Comparamos
if [[ "$dia_minuscula" == "sábado" || "$dia_minuscula" == "sabado" || "$dia_minuscula" == "domingo" ]]; then
    echo "El día '$dia' pertenece al Fin de Semana."
else
    echo "El día '$dia' NO pertenece al Fin de Semana."
fi