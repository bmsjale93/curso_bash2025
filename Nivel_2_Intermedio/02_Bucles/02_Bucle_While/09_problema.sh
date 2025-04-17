# Crea while9.sh que cuente cuántos intentos hace el usuario hasta escribir la palabra correcta.

echo "¡Bienvenido al Menú de Bash! Este es el Menú: "
echo -e "1) Inicio\n2) Salir"

seleccion=""

while [[ $seleccion -ne 2 ]]; do
    read -p "Seleccione una opción: " seleccion
    echo "Has vuelto al inicio, selecciona salir."
done

echo "Has salido del programa."