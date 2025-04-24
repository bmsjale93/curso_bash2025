# Crea until4.sh que espere hasta que desaparezca un archivo llamado bloqueo.tmp.

archivo="bloqueo.tmp"

echo "Esperando a que se elimine $archivo..."

until [ ! -w $archivo ]; do
    sleep 1
done

echo "$archivo eliminado. Continuando..."