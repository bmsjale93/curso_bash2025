# Crea cond9.sh que combine condiciones con [[ ... ]].
# Verifica si una variable no está vacía y contiene la palabra "bash".

read -p "Por favor, introduce una palabra: " input
if [[ -n "$input" && "$input" == "bash" ]]; then
    echo "La palabra cumple todas las condiciones."
else
    echo "La palabra no cumple todas las condiciones."
fi