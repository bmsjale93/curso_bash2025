# Crea if4.sh que pida un número del 1 al 7 y diga qué día de la semana es.
# Usa una estructura if-elif-else.

read -p "Por favor, introduce un valor [1-7]: " valor

if [ $valor -lt 1 ] || [ $valor -gt 7 ]; then
    echo "Has introducido un valor incorrecto."
elif [ $valor -eq 1 ]; then
    echo "El día seleccionado es Lunes"
elif [ $valor -eq 2 ]; then
    echo "El día seleccionado es Martes"
elif [ $valor -eq 3 ]; then
    echo "El día seleccionado es Miércoles"
elif [ $valor -eq 4 ]; then
    echo "El día seleccionado es Jueves"
elif [ $valor -eq 5 ]; then
    echo "El día seleccionado es Viernes"
elif [ $valor -eq 6 ]; then
    echo "El día seleccionado es Sábado"
elif [ $valor -eq 7 ]; then
    echo "El día seleccionado es Domingo"
else
    echo "Debes introducir un valor numérico."
fi
