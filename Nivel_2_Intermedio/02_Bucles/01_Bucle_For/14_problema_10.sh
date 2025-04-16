# Crea for10.sh que recorra todos los archivos en /etc/ y muestre los que sean archivos regulares.

for archivo in /etc/*
do
    if [ -f $archivo ]; then
        echo "Archivo encontrado: $archivo"
    fi
done
