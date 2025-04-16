# Crea int8.sh que compruebe si dos números son iguales o diferentes.

read -p "Por favor, ingresa dos números: " num1 num2

if [ $num1 -eq $num2 ]; then
    echo "Los números ingresados son iguales"
else
    echo "Los números son diferentes"
fi
