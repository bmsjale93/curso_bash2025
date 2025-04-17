# Crea while9.sh que cuente cuántos intentos hace el usuario hasta escribir la palabra correcta.

palabra="Hola"
input=""

contador=0

while [[ $input != $palabra ]]; do
    read -p "Por favor, ingresa una palabra: " input
    ((contador++))
done

echo "¡Correcto! Has tardado en acertar un total de $contador veces."