# Ejercicios 9: Control de Flujo y Comparación de Valores
# Crea un script llamado verificar_usuario.sh que:
# Pida al usuario su nombre con read.
# Compare si el usuario ingresado es el mismo que $USER.
# Si es el mismo, muestra "Bienvenido, <usuario>!".
# Si es diferente, muestra "Este no es tu usuario actual" y finaliza con código de error 1.
# Puntos a evaluar: uso de if, read, comparación de cadenas.

read -p "Por favor, ingresa tu nombre de usuario: " usuario

if [ "$usuario" == "$USER" ]; then
    echo "Bienvenido, $usuario!"
else
    echo "Este no es tu usuario actual"
    exit 1
fi