# Crea un script llamado int1.sh que compare dos números ingresados por el usuario y muestre cuál es mayor.

read -p "Por favor, ingresa dos números: " num1 num2

if [ $num1 -gt $num2 ]; then
    echo "$num1 es MAYOR que $num2"
elif [ $num1 -lt $num2 ]; then
    echo "$num2 es MAYOR que $num1"
else
    echo "Ambos números son IGUALES."
fi
