# Crea case7.sh que permita al usuario introducir una letra y verifique si es vocal o consonante.

read -p "Introduce una letra: " letra

# Convertimos la letra a minúscula para que funcione con mayúsculas
letra_minuscula=$(echo "$letra" | tr '[:upper:]' '[:lower:]')

if [[ "$letra_minuscula" =~ ^[a-zA-Z]$ ]]; then
    case $letra_minuscula in
        a|e|i|o|u)
            echo "Has introducido una VOCAL."
            ;;
        *)
            echo "Has introducido una CONSONANTE."
            ;;
    esac
else
    echo "Entrada no válida. Introduce sólo una letra."
fi
