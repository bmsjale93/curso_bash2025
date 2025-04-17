# Crea while6.sh que cuente regresivamente desde 10 hasta 0 y muestre un mensaje de “¡Despegue!”.

contador=10

while [[ $contador -gt 0 ]]; do
    echo "Contador: $contador"
    ((contador--))
done

echo "¡Despegue!"