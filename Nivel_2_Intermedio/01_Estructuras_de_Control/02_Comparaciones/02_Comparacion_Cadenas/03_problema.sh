# Crea str3.sh que pida dos cadenas y determine cuál va primero alfabéticamente.

read -p "Por favor, ingresa dos cadenas: " cadena1 cadena2

if [[ $cadena1 < $cadena2 ]]; then
    echo "$cadena1 va antes que $cadena2"
elif [[ $cadena1 > $cadena2 ]]; then
    echo "$cadena2 va antes que $cadena1"
else
    echo "Has introducido la misma cadena dos veces"
fi
