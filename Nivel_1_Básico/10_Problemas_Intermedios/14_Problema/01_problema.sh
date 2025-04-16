# Ejercicio 15: Crear y Gestionar Backups
# Crea un script backup_directorio.sh que:
# Reciba un directorio como argumento.
# Cree un archivo comprimido con el contenido del directorio (backup_<fecha>.tar.gz).
# Guarde el archivo en /home/usuario/backups/.
# Si el directorio no existe, muestra un error.
# Ejemplo de uso:
# ./backup_directorio.sh /home/usuario/documentos

# Salida esperada:
# Backup creado: /home/usuario/backups/backup_2024-02-21.tar.gz

# Puntos a evaluar: uso de tar, date, mkdir, validación de directorios.

# Verificamos que se pasan los argumentos correspondientes
if [ $# -ne 1 ]; then
    echo "Error: Debes pasar los argumentos correspondientes."
    echo "Uso: $0 <argumento>"
    exit 1
fi

# Pasamos el directorio por argumento
directorio=$1

# Verificamos que el directorio existe
if [ ! -d $directorio ]; then
    echo "Error: El directorio $directorio no existe"
    exit 1
fi

# Definimos la ruta del directorio de backups
backup_dir="backups/"

# Creamos el directorio de backups si no existe
mkdir -p "$backup_dir"

# Formateamos la fecha para el nombre del archivo
fecha=$(date +"%Y-%m-%d")

# Nombre del archivo de backup
backup_file="$backup_dir/backup_$fecha.tar.gz"

# Crear el archivo comprimido con el contenido del directorio
tar -zcvf "$backup_file" "$directorio"

# Verificamos si la creación fue exitosa
if [ $? -eq 0 ]; then
    echo "Backup creado: $backup_file"
else
    echo "Error al crear el backup"
    exit 1
fi