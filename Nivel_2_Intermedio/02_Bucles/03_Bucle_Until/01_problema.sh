# Crea un script llamado until1.sh que cuente del 1 al 10 usando until.

contador=1

until [ $contador -gt 10 ]; do
    echo "Contador: $contador"
    ((contador++))
done
