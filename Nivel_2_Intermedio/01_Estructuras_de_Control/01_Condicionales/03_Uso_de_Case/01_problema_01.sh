# Crea un script case1.sh que pida una letra (a, b, c) e imprima un mensaje según la opción elegida.

read -p "Introduce una opción (a, b o c): " opcion

case $opcion in
    a)
        echo "Has elegido la opción A."
        ;;
    b)
        echo "Has elegido la opción B."
        ;;
    c)
        echo "Has elegido la opción C."
        ;;
    *)
        echo "Opción no válida."
        ;;
esac
