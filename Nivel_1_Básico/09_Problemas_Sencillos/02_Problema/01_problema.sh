# Ejercicio 2: Permisos y Propiedad de Archivos
# Crea un script llamado permisos.sh que:
# Cree un archivo secreto.txt.
# Le asigne permisos 600 (solo lectura y escritura para el dueño).
# Cambie el propietario del archivo a root (si es posible).
# Cambie el grupo del archivo a sudo (si es posible).
# Muestra los permisos y propietario final del archivo con ls -l.
# Puntos a evaluar: uso de chmod, chown, chgrp, ls -l.

echo "Creamos un archivo secreto.txt"
cat << EOF > secreto.txt
Este archivo contiene un secreto
El secreto esta escrito en texto
Con esto, terminamos el escrito
EOF
echo "Comprobamos los permisos actuales del archivo secreto.txt"
ls -l
echo "Le asignamos permisos 600..."
chmod 600 secreto.txt
echo "Comprobamos si se han modificado los permisos..."
ls -l
echo "Cambiamos el propietario del archivo a root..."
sudo chown root secreto.txt
echo "Comprobamos si ha cambiado el dueño del archivo"
ls -l
echo "Cambiamos el grupo del archivo a sudo..."
sudo chgrp sudo secreto.txt
echo "Comprobamos si ha cambiado el grupo del archivo"
ls -l