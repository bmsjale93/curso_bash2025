# Crea str5.sh que verifique si una contraseña ingresada es distinta de una contraseña almacenada.
#!/bin/bash/

# Creamos una variable para la contraseña almacenada
contrasena_almacenada=12345

# Pedimos al usuario que introduzca una contraseña
read -p "Por favor, ingresa la contraseña: " contrasena

# Comprobamos si la contraseña es correcta
if [[ $contrasena == $contrasena_almacenada ]]; then
    echo "Acceso concedido"
else
    echo "Acceso denegado"
fi

