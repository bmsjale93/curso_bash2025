# Crea un script llamado if1.sh que evalúe si un número ingresado es par o impar.
# Usa el operador módulo % con (( ... )) y condicional if.

read -p "Por favor, ingresa un número: " numero

if (( $numero % 2 == 0 )); then
    echo "El número $numero es PAR"
else
    echo "El número $numero es IMPAR"
fi