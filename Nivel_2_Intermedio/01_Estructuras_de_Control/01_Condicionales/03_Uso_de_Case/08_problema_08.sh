# Crea case8.sh que pregunte al usuario su sistema operativo (Linux, macOS, Windows) y dé un mensaje personalizado.

read -p "Por favor, introduce tu sistema operativo: " so

sistema_operativo=$(echo "$so" | tr '[:upper:]' '[:lower:]' )

case $sistema_operativo in 
    linux)
        echo "Utilizars el Sistema Operativo Linux."
        ;;
    windows)
        echo "Utilizas el Sistema Operativo Windows."
        ;;
    macos)
        echo "Utilizas el Sistema Operativo macOS."
        ;;
    *)
        echo "Entrada no válida."
        ;;
esac
