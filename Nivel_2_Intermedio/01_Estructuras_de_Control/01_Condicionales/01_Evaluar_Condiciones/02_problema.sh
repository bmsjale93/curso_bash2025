# Crea el script cond2.sh que compare una cadena con el valor "hola".
# Usa [[ ... ]] para comprobar si la cadena ingresada por el usuario es "hola" y muestra un mensaje si coincide.

read -p "Por favor, ingrese una cadena de texto: " cadena

if [[ $cadena == "hola" ]]; then
    echo "La cadena ingresada por el usuario coincide."
else
    echo "La cadena ingresada no coincide."
fi