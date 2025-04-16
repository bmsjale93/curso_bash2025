# Crea if6.sh que pregunte si el usuario desea continuar (s/n).
# Evalúa la respuesta usando if y muestra un mensaje.

read -p "¿Desea continuar (s/n): " respuesta

if [[ $respuesta == "s" ]]; then
    echo "Has seleccionado Si"
else
    echo "Has seleccionado No"
fi
