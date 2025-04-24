# Crea flow3.sh que pida números al usuario en un bucle while y termine cuando se escriba “0”.

numero=1

while [[ $numero -ne 0 ]]; do
    read -p "Por favor, proporciona un valor: " numero
done

echo "Has introducido el 0. El programa ha finalizado."
