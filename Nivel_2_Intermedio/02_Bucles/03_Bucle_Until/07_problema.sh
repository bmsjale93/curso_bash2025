# Crea until7.sh que simule una cuenta atrás desde 10 hasta 1 y termine con “¡Despegue!”.

contador=10

echo "Comenzando cuenta atrás..."

until [ $contador -lt 1 ]; do
    echo "Contador: $contador"
    ((contador--))
done

echo "¡Despegue!"