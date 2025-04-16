# Crea case5.sh que permita al usuario elegir entre tres opciones de menú y ejecute una acción diferente en cada caso.

read -p "Por favor, seleccione un menú: " opcion

case $opcion in
    simple)
        echo "Has seleccionado el menú simple."
        ;;
    completo)
        echo "Has seleccionado el menú completo."
        ;;
    deluxe)
        echo "Has seleccionado el menú deluxe."
        ;;
    *)
        echo "Opción no válida"
        ;;
esac
