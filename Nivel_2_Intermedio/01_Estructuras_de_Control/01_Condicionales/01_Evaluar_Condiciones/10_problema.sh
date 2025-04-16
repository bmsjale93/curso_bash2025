# Crea cond10.sh para evaluar si un número es positivo, negativo o cero.
# Usa una estructura de condiciones múltiples con [ ... ] y muestra el resultado adecuado.

read -p "Por favor, ingresa un número: " numero

if [ $numero -ge 0 ]; then
    if [ $numero == 0 ]; then
        echo "El número es cero"
    else
        echo "El número es positivo"
    fi
else
    echo "El número es negativo"
fi