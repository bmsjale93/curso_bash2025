# Crea int3.sh que verifique si un número es par o impar.
# Usa (( num % 2 == 0 )) para evaluar el resultado.

read -p "Por favor, ingresa un número: " num

if (( num % 2 == 0 )); then
    echo "El número es PAR"
else
    echo "El número es IMPAR"
fi
