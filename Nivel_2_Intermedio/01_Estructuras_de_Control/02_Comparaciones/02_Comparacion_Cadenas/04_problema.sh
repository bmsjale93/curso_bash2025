# Crea str4.sh que reciba un correo electrónico e identifique si contiene @gmail.com.

read -p "Por favor, introduce tu correo electrónico: " correo

if [[ $correo == *@gmail.com ]]; then
    echo "El correo pertenece a GMAIL"
else
    echo "El correo NO pertenece a GMAIL"
fi
