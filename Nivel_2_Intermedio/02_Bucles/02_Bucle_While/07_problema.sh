# Crea while8.sh que pida al usuario un número entre 1 y 100. Si no lo cumple, repite la pregunta.

#!/bin/bash

numero=50
num=0

while [[ $num -ne $numero ]]; do
    read -p "Por favor, ingresa un número entre 1 y 100: " num

    # Comprobar que es un número válido
    if ! [[ "$num" =~ ^[0-9]+$ ]]; then
        echo "Eso no es un número válido."
        continue
    fi

    # Comprobar que esté entre 1 y 100
    if [[ $num -lt 1 || $num -gt 100 ]]; then
        echo "El número debe estar entre 1 y 100."
        continue
    fi

    if [[ $num -ne $numero ]]; then
        echo "No has acertado, intenta de nuevo..."
    fi
done

echo "¡Has acertado!"
