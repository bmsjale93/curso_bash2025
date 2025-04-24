# Crea until2.sh que pida al usuario una contraseña hasta que escriba "admin123".

contrasena=""

until [[ "$contrasena" == "admin123" ]]; do
    read -p "Escribe la contraseña correcta: " contrasena
done

echo "Acceso concedido."