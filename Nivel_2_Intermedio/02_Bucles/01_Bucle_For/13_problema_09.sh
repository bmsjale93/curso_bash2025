# Crea for9.sh que pida al usuario cinco palabras y luego las imprima una por una.

echo "Por favor, ingresa 5 palabras separadas por coma: "
read -a palabras

for palabra in "${palabras[@]}"
do
    echo "Palabra: $palabra"
done
