# Crea for4.sh que imprima los números pares entre 0 y 20.

for i in {0..20}
do
    if (( $i % 2 == 0 )); then
        echo "Número PAR: $i"
    fi
done
