# Pon en práctica lo aprendido resolviendo estos ejercicios:

# Usa ls -l para ver el propietario y grupo de ejemplo.txt.
# Cambia el propietario de ejemplo.txt a otro usuario con chown.
# Cambia el grupo de ejemplo.txt a un grupo diferente con chgrp.
# Usa chown para cambiar el propietario y el grupo al mismo tiempo.
# Cambia el propietario de una carpeta completa y su contenido con chown -R.
# Cambia el grupo de todos los archivos dentro de una carpeta con chgrp -R.
# Intenta cambiar el propietario de un archivo sin usar sudo y observa el error.
# Usa chown para transferir la propiedad de un archivo a root y luego intenta modificarlo como usuario normal.
# Crea un grupo nuevo en el sistema y cambia el grupo de un archivo a ese grupo.
# Compara el comportamiento de chown y chgrp al aplicarlos en archivos y directorios.

# Usa ls -l para ver el propietario y grupo de ejemplo.txt.
echo "Creamos el archivo de trabajo ejemplo.txt"
echo "Esto es un archivo de ejemplo" >> ejemplo.txt
echo "Usamos ls -l para ver el propietario y grupo del archivo..."
ls -l
echo ""

# Cambia el propietario de ejemplo.txt a otro usuario con chown.
echo "Creamos un nuevo usuario utilizando adduser..."
sudo adduser nuevo_usuario
echo "Cambiamos el propietario del archivo que hemos creado anteriormente..."
sudo chown nuevo_usuario ejemplo.txt
echo "Verificamos que se han modificado los permisos..."
ls -l
echo ""

# Cambia el grupo de ejemplo.txt a un grupo diferente con chgrp.
echo "Primero creamos un grupo con groupadd..."
sudo groupadd nuevo_grupo
echo "Agregamos el usuario que hemos creado a este grupo..."
sudo usermod -aG nuevo_grupo nuevo_usuario
echo "Una vez hemos agregado al usuario a este grupo, cambiamos el grupo del archivo que hemos generado..."
sudo chgrp nuevo_grupo ejemplo.txt
echo "Verificamos que se han modificado los permisos..."
ls -l
echo ""

# Usa chown para cambiar el propietario y el grupo al mismo tiempo.
echo "Creamos un nuevo archivo donde cambiaremos el propietario y el grupo a la vez..."
echo "Este es un archivo de ejemplo" >> ejemplo2.txt
echo "Verificamos los permisos actuales del archivo"
ls -l
echo "Ahora, cambiamos el propietario y el grupo a la vez..."
sudo chown nuevo_usuario:nuevo_grupo ejemplo2.txt
echo "Verificamos que se han modificado los permisos..."
ls -l
echo ""

# Cambia el propietario de una carpeta completa y su contenido con chown -R.
echo "Primero crearemos la carpeta y el archivo con los que trabajaremos..."
mkdir mi_directorio
touch mi_directorio/archivo_prueba.txt
echo "Ahora, cambiamos el propietario de la carpeta y su contenido..."
sudo chown -R nuevo_usuario mi_directorio/
echo "Verificamos que se han modificado los permisos..."
ls -l
echo ""

# Cambia el grupo de todos los archivos dentro de una carpeta con chgrp -R.
echo "Ahora, cambiaremos el grupo de la carpeta y el archivo que hemos creado previamente..."
sudo chgrp -R nuevo_grupo mi_directorio/
echo "Verificamos que se han modificado los permisos..."
ls -l
echo ""

# Intenta cambiar el propietario de un archivo sin usar sudo y observa el error.
echo "Ahora, vamos a crear un nuevo archivo e intentaremos cambiar el propietario sin sudo..."
touch ejemplo3.txt
echo "Intentamos modificar sin sudo..."
chown nuevo_usuario ejemplo3.txt
echo "Verificamos que se han modificado los permisos..."
ls -l
echo ""
# Como observamos, no hay cambios en los permisos del archivo, lo que nos dice que dicho comando no funciona sin sudo.

# Usa chown para transferir la propiedad de un archivo a root y luego intenta modificarlo como usuario normal.
echo "Creamos un nuevo archivo de trabajo para transferirlo a root e intentamos modificarlo..."
echo "Esto es un archivo transferido a root..." >> ejemplo4.txt
echo "Cambiamos el propietario del archivo a root..."
sudo chown root ejemplo4.txt
echo "Verificamos que se han modificado los permisos..."
ls -l
echo "Intentamos modificar el archivo del cual ahora es propietario root..."
echo "Intentamos modificar el archivo..." >> ejemplo4.txt
echo "Verificamos si el contenido del archivo ha cambiado..."
cat ejemplo4.txt
echo ""

# Crea un grupo nuevo en el sistema y cambia el grupo de un archivo a ese grupo.
echo "Creamos un grupo nuevo y cambiamos el grupo de un archivo a ese grupo..."
sudo groupadd prueba_grupo
echo "Creamos un archivo con el que trabajaremos y posteriormente cambiaremos de grupo."
touch archivo_prueba2.txt
echo "Cambiamos el archivo de grupo"
sudo chgrp prueba_grupo archivo_prueba2.txt
echo "Verificamos que se han modificado los permisos..."
ls -l
echo ""

# Compara el comportamiento de chown y chgrp al aplicarlos en archivos y directorios.
echo "Vamos a comparar chown y chgrp al aplicarlos sobre archivos y directorios."
echo "En primer lugar, vamos a crear un archivo y un directorio nuevos."
mkdir directorio2
touch prueba_final.txt
echo "Modificamos el propietario de ambos archivos con chown y vemos que ocurre."
sudo chown nuevo_usuario prueba_final.txt
sudo chown nuevo_usuario directorio2
echo "Comprobamos que se han modificado los permisos..."
ls -l
echo "Ahora, modificamos el grupo del directorio y del archivo..."
sudo chgrp prueba_grupo directorio2
sudo chgrp prueba_grupo prueba_final.txt
echo "Comprobamos que se han modificado los permisos..."
ls -l
echo ""
