# Ejercicio 12: Verificar Procesos en Ejecución
# Crea un script verificar_proceso.sh que:
# Reciba un nombre de proceso como argumento.
# Verifique si el proceso está en ejecución.
# Si está en ejecución, muestra su PID y consumo de CPU.
# Si no está en ejecución, muestra un mensaje indicando que no se encontró.
# Ejemplo de uso:
# ./verificar_proceso.sh firefox

# Salida esperada:
# Proceso firefox en ejecución. PID: 12345 | CPU: 8.5%

# Puntos a evaluar: uso de ps aux, grep, awk, validación de argumentos.
#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Error: Debes pasar los argumentos necesarios"
    echo "Uso: $0 <argumento>"
    exit 1
fi

# Capturamos el nombre del proceso
proceso=$1

# Buscamos el proceso en ejecución
info=$(ps aux | grep -i "$proceso" | grep -v "grep")

# Verificamos que se encontró el proceso
if [ -n "$info" ]; then
    # Extraemos el PID y consumo de CPU usando awk
    pid=$(echo "$info" | awk '{print $2}')
    cpu=$(echo "$info" | awk '{print $3}')

    echo "Proceso $proceso en ejecución. PID: $pid | CPU: ${cpu}%"
else
    echo "Proceso $proceso no encontrado en ejecución"
    exit 1
fi