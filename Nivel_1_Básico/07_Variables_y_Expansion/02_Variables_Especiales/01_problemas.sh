# Crea un script que imprima su propio nombre usando $0.
# Modifica el script para que muestre el primer y segundo argumento recibidos.
# Crea un script que cuente y muestre la cantidad de argumentos recibidos usando $#.
# Usa $@ para mostrar todos los argumentos recibidos en una sola línea.
# Usa $* y compáralo con $@ en la salida de un script.
# Crea un script que muestre su propio PID con $$.
# Ejecuta un comando exitoso y muestra su código de salida con $?.
# Ejecuta un comando que falle y verifica su código de salida con $?.
# Crea un script que verifique si se pasó al menos un argumento y, si no, muestre un mensaje de error.
# Modifica un script para que, si el número de argumentos es menor a 2, muestre un mensaje de uso correcto y salga con un código de error 1.

# Crea un script que imprima su propio nombre usando $0.
echo "Creamos el script."
cat << EOF > mi_script.sh
#!/bin/bash
echo "Esto es un script de Bash"
echo "El nombre de este script es $0"
EOF
echo "Le damos permisos de ejecución a este script..."
chmod +x mi_script.sh
echo "Ejecutamos el script..."
./mi_script.sh
echo "La ejecución ha finalizado."

# Modifica el script para que muestre el primer y segundo argumento recibidos.
echo -e "\nAhora, modificamos el script para que muestre el primer y segundo argumento..."
cat << EOF > mi_script.sh
#!/bin/bash
echo "Esto es un script de Bash"
echo "El nombre de este script es $0"
echo "El primer argumento es \$1"
echo "El segundo argumento es \$2"
EOF
echo "Ejecutamos el script pasándole dos argumentos..."
./mi_script.sh hola mundo
echo "La ejecución ha finalizado."

# Crea un script que cuente y muestre la cantidad de argumentos recibidos usando $#.
echo -e "\nAhora, crearemos otro script que cuente y muestre la cantidad de argumentos recibidos..."
cat << EOF > script_2.sh
#!/bin/bash
echo "Estamos ejecutando el segundo script."
echo "El número de argumentos pasados son: \$#"
EOF
echo "Le damos permisos de ejecución al script."
chmod +x script_2.sh
echo "Ejecutamos el script..."
./script_2.sh uno dos tres
echo "La ejecución ha finalizado."

# Usa $@ para mostrar todos los argumentos recibidos en una sola línea.
echo -e "\nAhora, crearemos otro script que cuente y muestre la cantidad de argumentos recibidos..."
cat << EOF > script_3.sh
#!/bin/bash
echo "Estamos ejecutando el tercer script."
echo "El número de argumentos pasados son: \$@"
EOF
echo "Le damos permisos de ejecución al script."
chmod +x script_3.sh
echo "Ejecutamos el script..."
./script_3.sh uno dos tres
echo "La ejecución ha finalizado."

# Usa $* y compáralo con $@ en la salida de un script.
echo -e "\nAhora, compararemos el uso de "$*" y "$@" en la ejecución de un script..."
cat << EOF > script_4.sh
#!/bin/bash
echo "Estamos ejecutando el cuarto script."
echo "El número de argumentos pasados son: \$*"
echo "El número de argumentos pasados son: \$@"
EOF
echo "Le damos permisos de ejecución al script."
chmod +x script_4.sh
echo "Ejecutamos el script..."
./script_4.sh uno dos tres
echo "La ejecución ha finalizado."

# Crea un script que muestre su propio PID con $$.
echo -e "\nCreamos un script que muestre su propio PID"
cat << EOF > script_5.sh
#!/bin/bash
echo "Estamos ejecutando el quinto script."
echo "El PID de este proceso es \$$"
EOF
echo "Le damos permisos de ejecución al script."
chmod +x script_5.sh
echo "Ejecutamos el script..."
./script_5.sh
echo "La ejecución ha finalizado."

# Ejecuta un comando exitoso y muestra su código de salida con $?.
echo -e "\nCreamos un script que ejecuta un comando exitoso y muestre su salida..."
cat << EOF > script_6.sh
#!/bin/bash
echo "Esto es un comando exitoso"
echo "Mostramos el código: \$?"
EOF
echo "Le damos permisos de ejecución al script."
chmod +x script_6.sh
echo "Ejecutamos el script..."
./script_6.sh
echo "La ejecución ha finalizado."

# Ejecuta un comando que falle y verifica su código de salida con $?.
echo -e "\nCreamos un script que ejecuta un comando que falla y muestre su salida..."
cat << EOF > script_7.sh
#!/bin/bash
ecko "Esto es un comando exitoso"
echo "Mostramos el código: \$?"
EOF
echo "Le damos permisos de ejecución al script."
chmod +x script_7.sh
echo "Ejecutamos el script..."
./script_7.sh
echo "La ejecución ha finalizado."

# Crea un script que verifique si se pasó al menos un argumento y, si no, muestre un mensaje de error.
echo -e "\nAhora debemos crear un script que verifique si se ha pasado al menos un argumento."
cat << EOF > script_8.sh
#!/bin/bash
echo "Ejecutando el script."
if [ \$# -eq 0 ]; then
    echo "Error: No se ha pasado ningún argumento."
    echo "Uso: \$0 <argumento1> <argumento2> ..."
    exit 1  # Salir con código de error
fi

# Si hay argumentos, los mostramos
echo "Número de argumentos recibidos: \$#"
echo "Argumentos: \$@"
EOF
echo "Le damos permisos de ejecución al script."
chmod +x script_8.sh
echo "Ejecutamos el script..."
./script_8.sh uno dos tres
echo "La ejecución ha finalizado."

# Modifica un script para que, si el número de argumentos es menor a 2, 
# muestre un mensaje de uso correcto y salga con un código de error 1.

echo -e "\nAhora debemos crear un script que verifique si se ha pasado al menos dos argumento."
cat << EOF > script_9.sh
#!/bin/bash
echo "Ejecutando el script."
if [ \$# -lt 2 ]; then
    echo "Error: No se han pasado los argumentos necesarios."
    echo "Uso: \$0 <argumento1> <argumento2> ..."
    exit 1  # Salir con código de error
fi

# Si hay argumentos, los mostramos
echo "Número de argumentos recibidos: \$#"
echo "Argumentos: \$@"
EOF
echo "Le damos permisos de ejecución al script."
chmod +x script_9.sh
echo "Ejecutamos el script..."
./script_9.sh uno 
echo "La ejecución ha finalizado."
