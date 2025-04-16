# Crea if2.sh para clasificar la edad ingresada por el usuario.
# Si es menor de 18, muestra “menor de edad”; si es mayor o igual, muestra “adulto”.

read -p "Por favor, ingresa tu edad: " edad

if [ $edad -lt 18 ]; then
    echo "Es menor de edad"
else
    echo "Es adulto"
fi
