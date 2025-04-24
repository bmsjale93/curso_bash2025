# Crea until3.sh que imprima los números impares del 1 al 15.

contador=1

until [ $contador -gt 15 ]; do
    if (( contador % 2 != 0 )); then
        echo "Numero IMPAR: $contador"
    fi
    ((contador++))
done