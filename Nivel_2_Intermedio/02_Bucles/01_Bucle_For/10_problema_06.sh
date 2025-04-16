# Crea for6.sh que reciba un número n y liste los números del 1 al n.

read -p "Por favor, ingresa un número: " numero

if (( $numero > 0 )); then
    for i in $(seq 1 "$numero" )
    do
        echo "Número: $i"
    done
else 
    echo "Por favor, introduce un número mayor que 0."
fi
