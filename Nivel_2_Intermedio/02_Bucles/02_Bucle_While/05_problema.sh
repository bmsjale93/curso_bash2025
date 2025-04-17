# Crea while5.sh que lea líneas de un archivo de texto línea por línea y las imprima.

cat << EOF > prueba.txt
Esto es una prueba
Debemos contar las lineas
Entonces contaremos 
cada linea que 
esta escrita en este documento
EOF

# Verificamos que se ha proporcionado un archivo como argumento

if [ $# -ne 1 ]; then
    echo "Uso: $0 archivo.txt"
    exit 1
fi

archivo=$1

# Verificamos que el archivo exista y sea legible
if [ ! -f $archivo ] || [ ! -r $archivo ]; then
    echo "El archivo $archivo no existe o no se puede leer"
    exit 1
fi

# Leer archivo linea por linea
while IFS= read -r linea
do
    echo $linea
done < $archivo