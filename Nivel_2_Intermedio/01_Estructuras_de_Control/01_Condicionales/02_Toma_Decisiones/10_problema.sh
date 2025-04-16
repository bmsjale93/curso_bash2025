# Crea if10.sh que pida tres números y determine cuál es el mayor.
# Usa una estructura if-elif-else anidada.

read -p "Por favor, introduce 3 números: " num1 num2 num3

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]; then
    echo "El número $num1 es mayor que $num2 y $num3"
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]; then
    echo "El número $num2 es mayor que $num1 y $num3"
else
    echo "El número $num3 es mayor que $num1 y $num2"
fi