# Crea str9.sh que reciba dos cadenas y verifique si son exactamente iguales, incluyendo mayúsculas y minúsculas.

read -p "Por favor, ingresa dos cadenas de texto: " entrada1 entrada2

if [[ "$entrada1" == "$entrada2" ]]; then
    echo "Has ingresado exactamente la misma cadena."
else
    echo "Las cadenas son diferentes."
fi
