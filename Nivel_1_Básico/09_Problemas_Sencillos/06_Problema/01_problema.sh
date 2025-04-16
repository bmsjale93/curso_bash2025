#!/bin/bash
# Ejercicios 7: Uso de Argumentos en Scripts
# Crea un script llamado suma.sh que:
# Reciba dos números como argumentos.
# Realice la suma de ambos.
# Muestre el resultado en pantalla.
# Si no se proporcionan dos números, debe mostrar un mensaje de error.
# Ejemplo de uso:
# ./suma.sh 5 10

# Salida esperada:
# La suma de 5 y 10 es 15

# Puntos a evaluar: uso de $1, $2, expr o $(( )), validación de argumentos.


# Verificamos si se proporcionaron exactamente dos argumentos
if [ $# -ne 2 ]; then
    echo "Error: Debes proporcionar dos números."
    echo "Uso: $0 <argumento1> <argumento2>"
    exit 1
fi

# Asignamos los argumentos a las variables
num1=$1
num2=$2

# Verificamos que los argumentos sean números
if ! [[ "$num1" =~ ^-?[0-9]+$ ]] || ! [[ "$num2" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Ambos argumentos deben ser números enteros."
    exit 1
fi

# Realizar la suma
suma=$((num1 + num2))

# Mostramos el resultado
echo "La suma de $num1 y $num2 es $suma"
