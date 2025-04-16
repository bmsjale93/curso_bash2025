# Crea if5.sh que valide si una contraseña introducida es igual a “admin123”.
# Muestra un mensaje de acceso permitido o denegado.

read -p "Por favor, introduce la contraseña: " pass

if [[ $pass == "admin123" ]]; then
    echo "Acceso permitido"
else
    echo "Acceso denegado"
fi
