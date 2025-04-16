#!/bin/bash

# Ejercicios 4: Pipes y Filtrado con Grep
# Usa una sola línea de comandos para hacer lo siguiente:
# Lista todos los procesos en ejecución.
# Filtra aquellos que contienen la palabra "bash".
# Guarda el resultado en un archivo procesos_bash.txt.
# Puntos a evaluar: uso de ps aux, grep, >.

echo "Listamos los proceos sen ejecución y filtraremos por bash"
ps aux | grep bash >> procesos_bash.txt