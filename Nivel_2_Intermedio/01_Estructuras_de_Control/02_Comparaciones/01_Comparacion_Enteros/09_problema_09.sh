# Crea int9.sh que reciba una puntuación entre 0 y 100 y la clasifique como suspenso (<50), aprobado (50–69), notable (70–89) o sobresaliente (90–100).

read -p "Por favor, ingrese la calificación: " nota

if [ $nota -lt 50 ]; then
    echo "Calificación ingresada: $nota | Suspenso"
elif [ $nota -gt 50 ] && [ $nota -lt 69 ]; then
    echo "Calificación ingresada: $nota | Aprobado"
elif [ $nota -gt 70 ] && [ $nora -lt 89 ]; then
    echo "Calificación ingresada: $nota | Notable"
else
    echo "Calificación ingresada: $nota | Sobresaliente"
fi
