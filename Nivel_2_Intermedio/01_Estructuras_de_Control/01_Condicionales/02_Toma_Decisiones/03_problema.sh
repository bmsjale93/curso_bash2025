# Crea if3.sh que determine si una nota (0-10) es sobresaliente, notable, aprobado o suspenso.
# Usa if, elif y else para las distintas categorías.

read -p "Introduce tu calificación: " nota

if [ $nota -lt 5 ]; then
    echo "Has suspendido"
elif [ $nota -ge 5 ] && [ $nota -le 7 ]; then
    echo "Has aprobado"
elif [ $nota -gt 7 ] && [ $nota -le 9 ]; then
    echo "Enhorabuena, tienes un notable."
else
    echo "Increíble, tienes un sobresaliente."
fi