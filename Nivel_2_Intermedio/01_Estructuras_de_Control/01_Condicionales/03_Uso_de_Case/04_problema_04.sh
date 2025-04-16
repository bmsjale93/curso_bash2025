# Crea case4.sh que pida al usuario una nota (0–10) y clasifique con "Suspenso", "Aprobado", "Notable", "Sobresaliente".

read -p "Introduce tu calificación: " nota

case $nota in
    0|1|2|3|4)
        echo "Estás suspenso."
        ;;
    5|6)
        echo "Estás aprobado."
        ;;
    7|8)
        echo "Has sacado un notable."
        ;;
    9|10)
        echo "¡Enhorabuena! Tienes un sobresaliente."
        ;;
    *)
        echo "Opción no válida."
        ;;
esac