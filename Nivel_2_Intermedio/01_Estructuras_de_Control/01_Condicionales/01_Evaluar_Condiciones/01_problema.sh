# Crea un script llamado cond1.sh que compare dos números.
# Solicita dos números al usuario y muestra cuál es mayor usando [ ... ].

read -p "Por favor, ingrese dos números: " numero1 numero2

if [ $numero1 -gt $numero2 ]; then
    echo "El primero número ingresado es mayor que el segundo."
else
    echo "El segundo número ingresado es mayor que el primero"
fi