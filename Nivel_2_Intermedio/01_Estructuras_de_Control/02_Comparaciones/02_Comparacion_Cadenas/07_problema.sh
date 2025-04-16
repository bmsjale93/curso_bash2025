# Crea str7.sh que valide si una entrada de texto está vacía.

# Pedimos el dia al usuario
read -p "Por favor, ingresa una cadena de texto: " cadena

# Comprobar que no esté vacío
if [[ -z $dia ]]; then
    echo "No ingresaste ningún texto. Intenta de nuevo."
    exit 1
fi