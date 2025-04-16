# Ejercicios 8: Scripts Ejecutables en Cualquier Ubicación
# Crea un script llamado hola.sh que imprima "¡Hola desde Bash!".
# Mueve el script a /usr/local/bin/ (requiere permisos de administrador).
# Asigna permisos 755 al script.
# Ejecuta el script desde cualquier ubicación solo con hola.sh.
# Puntos a evaluar: uso de chmod, $PATH, ejecución de scripts.

echo "Creamos el script que ejecutaremos desde cualquier ubicación."
cat << EOF > hola.sh
echo "¡Hola desde Bash!"
EOF
echo "Le damos permisos 755 al script antes de moverlo..."
chmod 755 hola.sh
echo "Ahora, movemos el script a /usr/local/bin/..."
sudo mv hola.sh /usr/local/bin/
echo "Ahora, intentamos ejecutar el script desde la ubicación actual."
./hola.sh
echo "Ejecución completada con éxito."