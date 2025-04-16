# Ejercicio 18: Simular un Gestor de Tareas
# Crea un script gestor_procesos.sh que:
# Liste los procesos en ejecución.
# Pregunte al usuario si desea terminar un proceso.
# Si el usuario introduce un PID, el script lo finalizará con kill.
# Si el usuario introduce salir, el script termina.
# Ejemplo de uso:
# ./gestor_procesos.sh

# Salida esperada:
# Procesos en ejecución:
# 1234 - firefox
# 5678 - bash
# Ingrese el PID a finalizar o 'salir': 1234
# Proceso 1234 finalizado.

# Puntos a evaluar: uso de ps aux, grep, kill, read, if.

#!/bin/bash

# Listamos los procesos en ejecución
ps aux

# Pedir al usuario el PID del proceso a finalizar
echo ""
read -p "Ingrese el PID del proceso a finalizar o 'salir' para terminar: " pid

# Si el usuario escribe "salir", termina el script
if [ "$pid" == "salir" ]; then
    echo "Saliendo..."
    exit 0
fi

# Finalizamos el proceso mencionado
kill -9 "$pid" 2>/dev/null && echo "Proceso $pid finalizado." || echo "Error: No se pudo finalizar el proceso."
    