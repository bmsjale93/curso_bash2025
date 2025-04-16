# Crea while2.sh que pida al usuario una contraseña y repita hasta que escriba "admin".

pass="admin"
while [[ $input != "admin" ]]
do
    read -p "Introduce la contraseña para acceder: " input
done