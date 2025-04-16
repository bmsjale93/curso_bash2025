# Crea int6.sh que clasifique una temperatura ingresada por el usuario: fría (menos de 10), templada (10–25) o caliente (más de 25).

read -p "Por favor, ingresa la temperatura actual: " temperatura

if [ $temperatura -lt 10 ]; then
    echo "Temperatura actual: $temperatura | Resultado: Frío"
elif [ $temperatura -gt 10 ] && [ $temperatura -lt 25 ]; then
    echo "Temperatura actual: $temperatura | Resultado: Templado"
else
    echo "Temperatura actual: $temperatura | Resultado: Caliente"
fi
