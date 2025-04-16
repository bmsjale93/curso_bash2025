# Crea for7.sh que copie todos los archivos .txt de un directorio a un directorio de respaldo.

for archivo in *.txt
do
    echo "Copiando todos los archivos .txt de esta carpeta"
    mkdir copias
    cp $archivo copias/
    echo "Archivos copiados correctamente."
done
