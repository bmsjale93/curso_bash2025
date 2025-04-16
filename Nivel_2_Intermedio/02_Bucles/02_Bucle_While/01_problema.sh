# Crea un script llamado while1.sh que cuente del 1 al 10 usando while.

contador=1
while [ $contador -le 10 ]
do
    echo "Contador: $contador"
    ((contador++))
done