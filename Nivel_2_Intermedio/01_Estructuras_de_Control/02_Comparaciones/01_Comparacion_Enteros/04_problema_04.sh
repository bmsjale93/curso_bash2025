# Crea int4.sh que pida tres números y determine cuál es el mayor.

read -p "Por favor, ingresa 3 números: " num1 num2 num3

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]; then
    echo "El número $num1 es el MAYOR.\nNúmeros ingresados: $num1 | $num2 | $num3"
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]; then
    echo "El número $num2 es el MAYOR.\nNúmeros ingresados: $num1 | $num2 | $num3"
else
    echo "El número $num3 es el MAYOR.\nNúmeros ingresados: $num1 | $num2 | $num3"
fi
