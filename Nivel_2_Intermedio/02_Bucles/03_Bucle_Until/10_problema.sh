# Crea until10.sh que repita un mensaje cada segundo hasta que el usuario lo detenga con Ctrl + C.

echo "Presiona Ctrl + C para detener el mensaje."

until false; do
    echo "Este mensaje se repetirá cada segundo hasta que lo detengas con Ctrl + C."
    sleep 1
done
