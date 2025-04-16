# Crea case9.sh que reciba una clave de idioma (es, en, fr, de) y muestre “Hola” en el idioma correspondiente.

read -p "Introduce una clave de idioma para recibir un mensaje (es, en, fr, de): " clave

idioma=$( echo "$clave" | tr '[:upper:]' '[:lower:]' )

case $idioma in
    es)
        echo "Bienvenido."
        ;;
    en)
        echo "Welcome."
        ;;
    fr)
        echo "Accueillir."
        ;;
    de)
        echo "Willkommen."
        ;;
    *)
        echo "Entrada no válida."
        ;;
esac
