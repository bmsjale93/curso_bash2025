# Crea case6.sh que interprete comandos básicos como start, stop, restart y muestre mensajes correspondientes.

read -p "Introduce un comando (start, stop o restart): " comando

case $comando in 
    start)
        echo "Comenzando el programa."
        ;;
    stop)
        echo "Has parado el programa."
        ;;
    restart)
        echo "Has reiniciado el programa."
        ;;
    *)
        echo "Opción no válida."
        ;;
esac
