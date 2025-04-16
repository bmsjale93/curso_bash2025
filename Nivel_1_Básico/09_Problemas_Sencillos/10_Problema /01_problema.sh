# Crea un script listar_detalle.sh que:
# Liste los archivos de un directorio pasado como argumento.
# Muestra la siguiente información de cada archivo:
# Nombre
# Tamaño en KB
# Fecha de última modificación
# Tipo (archivo o directorio)
# Si no se proporciona un directorio, usa el directorio actual por defecto.

# Ejemplo de ejecución:
# ./listar_detalle.sh /home/usuario

# Salida esperada:
# Nombre: documento.txt | Tamaño: 15 KB | Modificado: 2024-02-21 12:00 | Tipo: Archivo
# Nombre: mis_fotos     | Tamaño: 4096 KB | Modificado: 2024-02-20 10:30 | Tipo: Directorio

# Puntos a evaluar: uso de ls -l, awk, if, du.

# Si no se proporciona un directorio, usamos el actual
directorio=${1:-$(pwd)}

# Comprobamos que se han pasado los argumentos necesarios
if [ $# -ne 1 ]; then
    echo "Error: Debes proporcionar los argumentos necesarios."
    echo "Uso: $0 <argumento>"
    exit 1
fi

# Comprobamos que el directorio existe
if [ ! -d "$directorio" ]; then
    echo "Error: El directorio '$directorio' no existe."
    exit 1
fi

# Encabezado de la lista
echo "Listado de archivos en: $directorio"
echo "--------------------------------------------------"

# Listamos los archivos con detalles
ls -l "$directorio" | awk 'NR>1 {
    tipo = ($1 ~ /^d/) ? "Directorio" : "Archivo";
    print "Nombre:", $9, "| Tamaño:", $5, "KB | Modificado:", $6, $7, $8, "| Tipo:", tipo
}'

# Uso de ls -l y awk para extraer los detalles correctamente
# NR (Número de Registro) representa el número de línea actual en el procesamiento de datos de awk.
# NR>1 significa "ignorar la primera línea" y solo procesar las líneas a partir de la segunda.
# ls -l lista los archivos con información detallada.
# awk filtra y da formato a la salida:
# $9 → Nombre del archivo.
# $5 → Tamaño en KB.
# $6, $7, $8 → Fecha de última modificación.
# ($1 ~ /^d/) ? "Directorio" : "Archivo" → Determina si es un directorio o un archivo.