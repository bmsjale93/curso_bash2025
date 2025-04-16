# Crea if9.sh que determine si una persona puede votar (mayor o igual a 18 años).
# Pide la edad y usa if-else.

read -p "Por favor, introduce tu edad: " edad

if [ $edad -lt 18 ]; then
    echo "Eres menor de edad, no puedes votar."
else
    echo "Eres mayor de edad, si puedes votar."
fi
