# Usa ps aux para encontrar el PID de un proceso en ejecución.
# Usa kill para terminar ese proceso con SIGTERM (15).
# Si el proceso no se detiene, usa kill -9 para forzar su cierre.
# Usa pkill para terminar un proceso solo con su nombre.
# Usa pkill -9 para forzar el cierre de un proceso específico.
# Ejecuta un programa en segundo plano (sleep 1000 &) y elimínalo con kill.
# Usa killall para terminar todos los procesos de un programa específico.
# Encuentra los procesos de un usuario y elimínalos con pkill -u usuario.
# Usa kill -18 en un proceso detenido para reanudarlo.
# Usa kill -19 para pausar un proceso y kill -18 para reanudarlo.

# Usa ps aux para encontrar el PID de un proceso en ejecución.
echo "Encontramos los PID de los procesos en ejecución..."
ps aux

# Usa kill para terminar ese proceso con SIGTERM (15).
echo -e "\nUsaremos kill para terminar un procesos con SIGTERM (15)..."
# kill -15 115498
echo "Comprobamos que el PID 115498 ha sido detenido..."
ps aux

# Si el proceso no se detiene, usa kill -9 para forzar su cierre.
echo -e "\nComo no se ha detenido, forzaremos su cierre..."
# kill -9 115498
echo "Comprobamos que el PID 115498 ha sido detenido de nuevo..."
ps aux

# Usa pkill para terminar un proceso solo con su nombre.
echo -e "\nAhora, terminaremos los procesos sleep en ejecución por su nombre..."
pkill sleep 180
echo "Comprobamos que el proceso sleep ha terminado..."
ps aux

# Usa pkill -9 para forzar el cierre de un proceso específico.
echo -e "\nAhora, terminaremos los procesos sleep de forma forzada..."
pkill -9 sleep
echo "Comprobamos que el proceso sleep ha terminado..."
ps aux

# Ejecuta un programa en segundo plano (sleep 1000 &) y elimínalo con kill.
echo -e "\nEjecutamos un proceso en segundo plano y lo eliminaremos con kill..."
sleep 1000 &
echo "Comprobamos que el proceso está en ejecución..."
ps aux | grep sleep
echo "Terminamos el proceso con kill..."
pkill sleep
echo "Comprobamos que el proceso ha terminado..."
ps aux | grep sleep

# Usa killall para terminar todos los procesos de un programa específico.
echo -e "\nAhora, mataremos todos los procesos de un programa específico..."
echo "Comprobamos los procesos que están en ejecución..."
killall chrome
echo "Comprobamos que el proceso ha terminado..."
ps aux | grep chrome

# Encuentra los procesos de un usuario y elimínalos con pkill -u usuario.
echo -e "\nAhora, buscaremos los procesos asociados a un usuario y los eliminaremos..."
ps aux | grep bmsjale
echo "Eliminamos los procesos asociados al usuario..."
# pkill -u bmsjale
echo "Comprobamos que los procesos ha sido eliminados..."
ps aux | grep bmsjale

# Usa kill -18 en un proceso detenido para reanudarlo.
echo -e "\nComprobamos los procesos que están detenidos..."
ps aux 
echo "Si queremos reanudar un proceso, utilizamos kill -18..."
kill -18 PID

# Usa kill -19 para pausar un proceso y kill -18 para reanudarlo.
echo -e "\nAhora, podremos pausar un procesos y reanudarlo..."
echo "Mostramos los procesos que estan ejecutando actualmente..."
ps aux
echo "Pausamos un proceso..."
kill -19 PID
echo "Reanudamos el mismo proceso"
kill -18 PID