# Crea cond7.sh para verificar permisos de ejecución.
# Comprueba si un archivo es ejecutable usando [ -x "$archivo" ].

read -p "Introduce un archivo para verificar sus permisos: " archivo
if [ -x "$archivo" ]; then
    echo "El archivo tiene permisos de ejecución."
else
    echo "El archivo NO tiene permisos de ejecución."
fi