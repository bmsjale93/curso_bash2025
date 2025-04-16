# Crea cond8.sh que compare dos cadenas alfabéticamente.
# Solicita dos palabras y usa [ "$a" \< "$b" ] para mostrar cuál está antes.

read -p "Por favor, ingresa dos palabras separados por espacios: " word1 word2
if [ "$a" \< "$b" ]; then
    echo "La palabra $word1 va antes que la palabra $word2"
else
    echo "La palabra $word2 va antes que la palabra $word1"
fi
