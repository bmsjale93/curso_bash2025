# Crea while3.sh que imprima los números pares entre 0 y 20.

contador=1

while [[ $contador -le 20 ]]; do
    if (( $contador % 2 == 0 )); then
        echo "Número Par: $contador"
    fi
    ((contador++))
done
