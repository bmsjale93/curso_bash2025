# Crea flow4.sh que simule un intento de login permitiendo solo 3 intentos, y termine si se acierta antes (usa break).

contador=0
contrasena=""

while true; do

    read -p "Por favor, ingresa la contraseña: " contrasena

    if [[ $contrasena == "admin123" ]]; then
        echo "Contraseña correcta, acceso concedido."
        break
    fi

    (( contador++ ))

    if [[ $contador -ge 3 ]]; then
        echo "Has superado el número de intentos, saliendo del programa..."
        break
    fi
done
