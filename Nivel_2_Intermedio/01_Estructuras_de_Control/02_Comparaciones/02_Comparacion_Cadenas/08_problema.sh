# Crea str8.sh que verifique si una cadena ingresada por el usuario comienza por la letra “A” o “a”.

read -p "Por favor, ingresa una cadena de texto: " cadena

# Verificamos si empieza por "A" o por "a"
if [[ $cadena == [Aa]* ]]; then
    echo "La cadena comienza por 'A' o 'a'."
else
    echo "La cadena NO comienza por 'A' o 'a'."
fi
