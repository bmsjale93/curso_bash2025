# Pon en práctica lo aprendido resolviendo estos ejercicios:

# Usa ls -l para ver los permisos de un archivo llamado ejemplo.txt.
# Usa chmod 777 en ejemplo.txt y verifica los cambios.
# Usa chmod 644 para dejar ejemplo.txt solo con permisos de lectura y escritura para el usuario.
# Usa chmod u+x para hacer ejemplo.txt ejecutable por el usuario.
# Usa chmod g-w para quitar permisos de escritura al grupo en ejemplo.txt.
# Usa chmod o-rwx para impedir que otros accedan a ejemplo.txt.
# Usa chmod a-w para impedir que alguien modifique ejemplo.txt.
# Usa chmod 750 en una carpeta mi_directorio y verifica qué usuarios pueden acceder.
# Usa chmod g+x en un script script.sh y pruébalo ejecutándolo.
# Usa chmod u=rw,g=r,o= en archivo_secreto.txt y verifica los cambios.

#!/bin/bash

# Usa ls -l para ver los permisos de un archivo llamado ejemplo.txt.
echo "Creamos un archivo ejemplo.txt"
echo "Esto es un archivo de prueba" >> ejemplo.txt
echo "Utilizamos ls -l para ver los permisos:"
ls -l 
echo ""

# Usa chmod 777 en ejemplo.txt y verifica los cambios.
echo "Utilizamos chmod 777 para cambiar los permisos del archivo."
chmod 777 ejemplo.txt
echo "Verificamos que se han cambiado los permisos."
ls -l
echo ""

# Usa chmod 644 para dejar ejemplo.txt solo con permisos de lectura y escritura para el usuario.
echo "Ahora, utilizamos chmod 644 para quitar permisos..."
chmod 644 ejemplo.txt
echo "Verificamos que se han modificado los permisos..."
ls -l
echo ""

# Usa chmod u+x para hacer ejemplo.txt ejecutable por el usuario.
echo "Ahora, utilizaremos la modificación simbólica con u+x, otorgando permisos de ejecución..."
chmod u+x ejemplo.txt
echo "Verificamos que se han modificado los permisos..."
ls -l
echo ""

# Usa chmod g-w para quitar permisos de escritura al grupo en ejemplo.txt.
echo "Quitamos permisos de escritura y lectura al grupo con chmod g-w..."
chmod g-wr ejemplo.txt
echo "Verificamos que se han modificado los permisos..."
ls -l
echo ""

# Usa chmod o-rwx para impedir que otros accedan a ejemplo.txt.
echo "Ahora, impediremos que otros usuarios accedan al archivo con o-rwx..."
chmod o-rwx ejemplo.txt
echo "Verificamos que se han modificado los permisos..."
ls -l
echo ""

# Usa chmod a-w para impedir que alguien modifique ejemplo.txt.
echo "Ahora, impediremos que se pueda modificar el archivo..."
chmod a-w ejemplo.txt
echo "Verificamos que se han modificado los permisos..."
ls -l
echo ""

# Usa chmod 750 en una carpeta mi_directorio y verifica qué usuarios pueden acceder.
echo "Creamos una carpeta mi_directorio para trabajar con ella..."
mkdir mi_directorio
echo "Ahora, utilizamos chmod 750 y verificamos el acceso a la misma..."
chmod 750 mi_directorio
echo "Verificamos que se han modificado los permisos..."
ls -l
echo ""

# Usa chmod g+x en un script script.sh y pruébalo ejecutándolo.
echo "Creamos un script básico para trabajar con el..."
cat << EOF > script.sh
#!/bin/bash
echo "Esto es un script básico"
EOF
echo "Ahora, modificamos los permisos del mismo con chmod g+x..."
chmod g+x script.sh
echo "Probamos a ejecutarlo..."
bash script.sh
echo ""

# Usa chmod u=rw,g=r,o= en archivo_secreto.txt y verifica los cambios.
echo "Creamos archivo_secreto.txt para trabajar con el..."
echo "Esto es un archivo secreto" >> archivo_secreto.txt
echo "Cambiamos los permisos..."
chmod u=rw,g=r,o= archivo_secreto.txt
echo "Verificamos que se han modificado los permisos..."
ls -l
echo ""