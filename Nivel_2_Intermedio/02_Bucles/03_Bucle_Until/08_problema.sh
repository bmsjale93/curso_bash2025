# Crea until8.sh que pida un número y repita hasta que el número ingresado sea múltiplo de 7.

numero=1

until (( numero % 7 == 0)); do
    read -p "Ingrese un número que sea múltiplo de 7: " numero
done

echo "¡Enhorabuena! El número $numero es múltiplo de 7."