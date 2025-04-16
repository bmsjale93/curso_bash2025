# Crea int7.sh que verifique si un número ingresado es divisible por 5.

read -p "Por favor, ingrese un número: " num

if (( $num % 5 == 0 )); then
    echo "El número es DIVISIBLE por 5"
else
    echo "El número NO es divisible por 5"
fi
