# Crea int2.sh que reciba un número y diga si es igual a 100, mayor o menor.

read -p "Por favor, ingrese un número: " num

if [ $num -gt 100 ]; then
    echo "Número ingresado: $num\nEs mayor que 100"
elif [ $num -lt 100 ]; then
    echo "Número ingresado: $num\nEs menor que 100"
else
    echo "Número ingresado: $num\nEs igual que 100"
fi

