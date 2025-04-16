# Usa ps para mostrar solo los procesos que pertenecen a tu usuario.
# Usa ps aux para listar todos los procesos en el sistema.
# Usa ps -e para ver los procesos en ejecución.
# Encuentra el PID de un proceso en ejecución con ps aux | grep bash.
# Usa top para identificar qué proceso consume más CPU.
# Dentro de top, usa la tecla M para ordenar por uso de memoria.
# Instala y ejecuta htop si no lo tienes en tu sistema.
# Filtra los procesos de un usuario específico con ps -u usuario.
# Encuentra el proceso con más consumo de memoria usando ps aux --sort=-%mem | head -5.
# Usa watch -n 2 ps aux para actualizar la lista de procesos cada 2 segundos.

# Usa ps para mostrar solo los procesos que pertenecen a tu usuario.
echo "Mostramos todos los procesos que pertenecen a nuestro usuario..."
ps

# Usa ps aux para listar todos los procesos en el sistema.
echo -e "\nAhora, mostramos todos los procesos en el sistema..."
ps aux

# Usa ps -e para ver los procesos en ejecución.
echo -e "\nProcedemos a ver los procesos en ejecución..."
ps -e

# Encuentra el PID de un proceso en ejecución con ps aux | grep bash.
echo -e "\nEncontramos el PID de un proceso en ejecución..."
ps aux | grep bash

# Usa top para identificar qué proceso consume más CPU.
# Dentro de top, usa la tecla M para ordenar por uso de memoria.
echo -e "\nAhora, identificaremos que proceso consume más CPU..."
# top

# Instala y ejecuta htop si no lo tienes en tu sistema.
echo -e "\nAhora, utilizaremos htop para ver como funciona..."
# htop

# Filtra los procesos de un usuario específico con ps -u usuario.
echo -e "\nFiltramos los procesos de un usuario especifico..."
ps -u bmsjale

# Encuentra el proceso con más consumo de memoria usando ps aux --sort=-%mem | head -5.
echo -e "\nEncontramos el proceso con más consumo de memoria..."
ps aux --sort=%mem | head -5

# Usa watch -n 2 ps aux para actualizar la lista de procesos cada 2 segundos.
echo -e "\nAhora, actualizaremos la lista de procesos cada 2 segundos..."
watch -n 2 ps aux