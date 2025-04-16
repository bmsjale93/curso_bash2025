# Crea un script verificar_usuario.sh que:
# Pida al usuario que ingrese su nombre.
# Si el nombre ingresado es diferente de $USER, el script debe terminar con código de error 1.
# Si el usuario es correcto, muestra "Bienvenido, <usuario>".
# Ejemplo de ejecución:
# ./verificar_usuario.sh

# Salida esperada:
# Introduce tu usuario: juan
# Bienvenido, juan

# Si el usuario es incorrecto:
# Introduce tu usuario: otro
# Este no es tu usuario actual.

# Puntos a evaluar: uso de read, if, exit, validación de usuario.

echo "Pedimos el nombre de usuario."
read -p "Ingrese el nombre de usuario: " usuario

if [ $usuario != $USER ]; then
    echo "Este no es tu usuario actual"
    exit 1
else
    echo "Bienvenido, $usuario"
fi

echo "Ejecución completada."