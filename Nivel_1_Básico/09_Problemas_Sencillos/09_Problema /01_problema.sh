# Ejercicio 10: Automatización con un Script Avanzado
# Crea un script llamado backup.sh que:
# Cree un directorio backup si no existe.
# Copie todos los archivos .txt del directorio actual a backup/.
# Muestra un mensaje "Backup completado" si tuvo éxito.
# Puntos a evaluar: uso de mkdir, cp, if, echo.

# Creamos el directorio si no existe
echo "Creamos un directorio backup..."
mkdir -p backup

# Creamos varios archivos de prueba
echo "Creamos varios archivos .txt para la tarea a realizar"
for i in {1..5}; do
    touch archivo$i.txt
    echo "Esto es un archivo de prueba" > archivo$i.txt
done

# Copiamos los archivos .txt a la carpeta backup/
echo "Copiamos todos los archivos generados en el directorio backup/"
cp *.txt backup/

# Borramos el resto de archivos una vez hemos hecho la copia
echo "Borramos los archivos originales."
rm *.txt

# Verificamos si la copia fue exitosa
if [ $? -eq 0 ]; then
    echo "Backup completado"
else
    echo "Error al realizar el backup"
    exit 1
fi
