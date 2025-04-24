# Crea until5.sh que pida al usuario un número mayor a 50, y repita la pregunta hasta cumplirlo.

numero=0

until [ $numero -gt 50 ]; do
    read -p "Introduce un valor mayor a 50: " numero
done
