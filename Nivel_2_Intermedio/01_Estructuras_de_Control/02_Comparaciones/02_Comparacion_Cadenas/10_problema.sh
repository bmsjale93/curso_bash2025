# Crea str10.sh que reciba un país y dé un saludo personalizado: “España” → “Hola”, “Francia” → “Bonjour”, “Alemania” → “Hallo”.

read -p "Por favor, ingresa un país (España, Francia o Alemania): " entrada

entrada_min=$(echo $entrada | tr '[:upper:]' '[:lower:]') 

if [[ "$entrada_min" == "españa" ]]; then
    echo "Hola"
elif [[ "$entrada_min" == "francia" ]]; then
    echo "Bonjour"
elif [[ "$entrada_min" == "alemania" ]]; then
    echo "Hallo"
else
    echo "Debes introducir uno de los paises mencionados."
fi
