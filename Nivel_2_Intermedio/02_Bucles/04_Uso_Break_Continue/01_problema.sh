# Crea un script flow1.sh que imprima los números del 1 al 10, pero termine al llegar al 6 (usa break).

for i in {1..10}; do
    if [ $i -eq 6 ]; then
        echo "Se alcanza el valor 6, saliendo del bucle."
        break
    fi
    echo "Valor: $i"
done
