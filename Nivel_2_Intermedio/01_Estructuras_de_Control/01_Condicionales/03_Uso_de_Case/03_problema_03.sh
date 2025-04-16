# Crea case3.sh que reciba el nombre de un día de la semana y diga si es laborable o fin de semana.

read -p "Introduce un día de la semana: " dia

case $dia in
    lunes|martes|miercoles|jueves|viernes)
        echo "Es día laborable."
        ;;
    sabado|domingo)
        echo "Es fin de semana"
        ;;
    *)
        echo "Opción no válida"
        ;;
esac

