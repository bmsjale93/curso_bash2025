# Crea un script llamado str1.sh que compare dos palabras ingresadas por el usuario y diga si son iguales o no.

read -p "Por favor, ingrese dos palabras: " cadena1 cadena2

if [[ "$cadena1" < "$cadena2" ]]; then
    echo "'$cadena1' va antes que '$cadena2'."
else
    echo "'$cadena2' va antes que '$cadena1'"
fi
