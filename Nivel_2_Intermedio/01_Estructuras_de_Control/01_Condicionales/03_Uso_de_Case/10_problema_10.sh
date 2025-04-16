# Crea case10.sh que pregunte al usuario una tecla de dirección (w, a, s, d) y muestre “Arriba”, “Izquierda”, etc.

read -p "Selecciona una tecla (w, a, s, d): " tecla

entrada=$( echo "$tecla" | tr '[:upper:]' '[:lower:]' )

case $entrada in
    w)
        echo "Avanzando hacia el Norte."
        ;;
    a)
        echo "Avanzando hacia el Oeste."
        ;;
    s)
        echo "Avanzando hacia el Sur."
        ;;
    d)
        echo "Avanzando hacia el Este."
        ;;
    *)
        echo "Entrada no válida."
        ;;
esac
