# Crea int5.sh que evalúe si un número está entre 10 y 50.

read -p "Por favor, ingresa un número: " num

if [ $num -gt 10 ] && [ $num -lt 50 ]; then
    echo "El número $num está entre 10 y 50."
else
    echo "El número $num se encuentra fuera del rango."
fi
