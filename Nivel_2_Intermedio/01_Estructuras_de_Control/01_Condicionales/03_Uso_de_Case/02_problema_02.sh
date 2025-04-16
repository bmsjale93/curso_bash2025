# Crea case2.sh que lea una extensión de archivo (.txt, .jpg, .sh, etc.) y diga qué tipo de archivo es.

read -p "Introduce un archivo: " archivo

case $archivo in
    *.jpg|*.png)
        echo "El archivo es una imagen."
        ;;
    *.txt)
        echo "Es un archivo de texto."
        ;;
    *.sh)
        echo "Es un archivo Bash"
        ;;
    *)
        echo "Es un archivo desconocido"
        ;;
esac
