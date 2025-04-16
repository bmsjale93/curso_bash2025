# Crea if7.sh que pida dos números y diga si son iguales, o cuál es mayor.
# Usa if-elif-else.

read -p "Por favor, introduce dos números: " num1 num2

if [ $num1 -eq $num2 ]; then
    echo "Los números '$num1' y '$num2' son iguales."
elif [ $num1 -gt $num2 ]; then
    echo "El número '$num1' es mayor que '$num2'."
else
    echo "El número '$num2' es mayor que '$num1'."
fi
