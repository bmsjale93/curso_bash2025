# Crea int10.sh que sume dos números ingresados por el usuario y compare el resultado con un tercer número para decir si la suma es mayor, menor o igual.

# Le pedimos los dos valores al usuario
read -p "Por favor, ingresa dos valores: " valor1 valor2

# Establecemos el valor a comparar
valor3=100

# Guardamos el resultado en una variable
resultado=$((valor1 + valor2))

# Hacemos la comprobación
if [ $resultado -lt $valor3 ]; then
    echo "La suma de los valores introducidos es MENOR que $valor3"
elif [ $resultado -gt $valor3 ]; then
    echo "La suma de los valores introducidos es MAYOR que $valor3"
else
    echo "La suma de los valores introducidos es IGUAL que $valor3"
fi
