# Usa ls -l | wc -l para contar los archivos en el directorio actual.
# Usa ps aux | head -5 para ver solo los primeros 5 procesos en ejecución.
# Filtra los archivos ocultos de un directorio usando ls -a | grep "^\.".
# Usa df -h | grep "/dev/sd" para ver el espacio en disco de los discos duros.
# Encuentra las líneas que contienen la palabra "root" en /etc/passwd usando cat /etc/passwd | grep root.
# Usa ls -l | sort -k5 -n | tail -5 para encontrar los 5 archivos más grandes en el directorio actual.
# Muestra los archivos más recientes en un directorio con ls -lt | head -3.
# Usa history | tail -10 para ver los últimos 10 comandos ejecutados.
# Cuenta cuántos archivos contienen la palabra "config" en sus nombres con ls | grep config | wc -l.
# Encuentra las líneas que contienen "error" en un archivo de log usando cat archivo.log | grep error.

# Usa ls -l | wc -l para contar los archivos en el directorio actual.
echo "Vamos a crear varios archivos y los contaremos..."
for i in {1..5}; do
    touch ejemplo_$i.txt
done
echo "Una vez hemos generado los archivos, procedemos a contarlos..."
ls | wc -l  # Con ls -l, cuenta una línea extra (el total de archivos)

# Usa ps aux | head -5 para ver solo los primeros 5 procesos en ejecución.
echo -e "\nProcedemos a ver los primeros 5 procesos en ejecución..."
ps aux | head -5

# Filtra los archivos ocultos de un directorio usando ls -a | grep "^\.".
echo -e "\nAhora, filtramos los archivos ocultos del directorio..."
touch .archivo_oculto.txt
ls -a | grep "^\."

# Usa df -h | grep "/dev/sd" para ver el espacio en disco de los discos duros.
echo -e "\nAhora, mostramos el espacio en disco de los discos duros del sistema..."
df -h | grep "/dev/sd"

# Encuentra las líneas que contienen la palabra "root" en /etc/passwd usando cat /etc/passwd | grep root.
echo -e "\nAhora, filtraremos la palabra root en /etc/passwd..."
cat /etc/passwd | grep root

# Usa ls -l | sort -k5 -n | tail -5 para encontrar los 5 archivos más grandes en el directorio actual.
echo -e "\nAhora, buscaremos los 5 archivos más grandes del directorio /home/usuario/"
ls -l /home/bmsjale/ | sort -k5 -n | tail -5

# Muestra los archivos más recientes en un directorio con ls -lt | head -3.
echo -e "\nProcedemos a mostrar los archivos más recientes del directorio actual..."
ls -lt | head -3

# Usa history | tail -10 para ver los últimos 10 comandos ejecutados.
echo -e "\nAhora, mostraremos los 10 últimos comandos ejecutados..."
history | tail -10

# Cuenta cuántos archivos contienen la palabra "config" en sus nombres con ls | grep config | wc -l.
echo -e "\nContamos cuántos archivos contienen la palabra 'config' en sus nombres..."
ls /home/bmsjale/ | grep config | wc -l

# Encuentra las líneas que contienen "error" en un archivo de log usando cat archivo.log | grep error.
echo -e "\nPrimero, creamos el archivo con el que trabajaremos..."
cat << EOF > prueba_final.txt
Esto es un archivo de prueba
Aqui buscaremos cuantos error contiene el archivo
Aunque un error no es fácil de encontrar
Básicamente, cualquier linea puede contener un error
Asi que busca bien
Por que el error está en cualquier parte...
EOF
echo "Una vez hemos creado el archivo, procedemos a encontrar las líneas que contienen 'error'..."
cat prueba_final.txt | grep error