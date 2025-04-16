# Crea str2.sh que solicite un nombre y verifique si es “Administrador”.
# Si coincide, muestra “Acceso permitido”.

read -p "Ingresa tu perfil: " perfil

if [[ $perfil == "Administrador" ]]; then
    echo "Acceso permitido"
else
    echo "Acceso denegado"
fi
