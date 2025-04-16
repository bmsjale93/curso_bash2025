# Ejercicio 16: Automatización con cron
# Crea un script registro_sistema.sh que:
# Registre la fecha, uso de CPU y memoria en un archivo registro.log.
# Configure cron para ejecutarlo cada 5 minutos.
# Ejemplo de ejecución manual:
# ./registro_sistema.sh

# Salida esperada en registro.log:
# Fecha: 2024-02-21 12:00 | CPU: 5.2% | RAM: 50%

# Para programarlo en cron, usa:
# crontab -e

# Y añade:
# */5 * * * * /ruta/registro_sistema.sh

# Puntos a evaluar: uso de top, free, date, cron.

#!/bin/bash

# Definir la ruta del archivo de registro
mkdir registros
registro="registros/registro.log"

# Obtenemos la fecha actual
fecha=$(date +"%d-%m-%Y %H:%M")

# Obtenemos el uso del CPU (primer valor de 'top' después de "Cpu(s):")
cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | tr -d '%')

# Obtenemos el uso de RAM (Calcularemos la memoria utilizada en porcentaje)
mem_total=$(free | awk '/Mem:/ {print $2}')
mem_usado=$(free | awk '/Mem:/ {print $3}')
ram=$(awk "BEGIN {printf \"%.1f\", ($mem_usado/$mem_total)*100}")

# Registramos la información en el archivo
echo "Fecha: $fecha | CPU: ${cpu}% | RAM: ${ram}%" >> "$registro"

# Mensaje de confirmación
echo "Registro guardado en $registro"
