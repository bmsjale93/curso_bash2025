# Crea cond6.sh para validar si la entrada del usuario es numérica.
# Usa [[ $input =~ ^[0-9]+$ ]] y muestra un mensaje según sea válido o no.

read -p "Por favor, ingresa una cadena: " input

if [[ $input =~ ^[0-9]+$ ]]; then
    echo "La entrada del usuario es numérica"
else
    echo "La entrada del usuario es textual."
fi
