# Ejercicio 14: Contar Líneas y Palabras en un Archivo
# Crea un script analizar_texto.sh que:
# Reciba un archivo de texto como argumento.
# Muestra la cantidad de líneas y palabras que contiene.
# Si el archivo no existe, muestra un mensaje de error.
# Ejemplo de uso:
# ./analizar_texto.sh documento.txt

# Salida esperada:
# Archivo: documento.txt
# Líneas: 120
# Palabras: 850

# Puntos a evaluar: uso de wc, if, validación de archivos.

# Verificamos que se han pasado los argumentos correspondintes
if [ $# -ne 1 ]; then
    echo "Error: Debes pasar los argumentos necesarios"
    echo "Uso: $0 <archivo>"
    exit 1
fi

# Pasamos el archivo por argumento
archivo=$1

# Verificamos que el archivo existe
if [ -f $archivo ]; then
    # Extraemos el número de líneas y palabras
    lineas=$(wc -l < $archivo)
    palabras=$(wc -w < $archivo )
    
    echo -e "Archivo: $archivo\nLíneas: $lineas\nPalabras: $palabras"
else
    echo "El archivo no existe."
    exit 1
fi