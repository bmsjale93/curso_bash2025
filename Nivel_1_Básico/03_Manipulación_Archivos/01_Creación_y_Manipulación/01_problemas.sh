# Pon en práctica lo aprendido resolviendo los siguientes ejercicios:

# Usa touch para crear un archivo llamado prueba.txt.
# Copia prueba.txt a un nuevo archivo llamado copia_prueba.txt.
# Renombra copia_prueba.txt a nuevo_prueba.txt.
# Mueve nuevo_prueba.txt a la carpeta Documentos.
# Crea una carpeta llamada backup y copia prueba.txt dentro de ella.
# Copia toda la carpeta backup a backup_copia.
# Elimina el archivo prueba.txt.
# Elimina la carpeta backup y todo su contenido.
# Usa touch para crear tres archivos (a.txt, b.txt, c.txt) y luego elimínalos de un solo comando.
# Crea una estructura de carpetas mis_proyectos/python, mueve un archivo dentro y luego elimina la estructura completa.

#!/bin/bash
# Usa touch para crear un archivo llamado prueba.txt.
echo "Creamos un archivo llamado prueba.txt"
touch prueba.txt
echo "Archivo creado correctamente..."
echo ""

# Copia prueba.txt a un nuevo archivo llamado copia_prueba.txt.
echo "Copiamos este archivo a un nuevo archivo llamado copia_prueba.txt"
cp prueba.txt copia_prueba.txt
echo "Verificamos que se ha copiado correctamente..."
ls 
echo ""

# Renombra copia_prueba.txt a nuevo_prueba.txt.
echo "Renombramos este nuevo archivo a nuevo_prueba.txt"
mv copia_prueba.txt nuevo_prueba.txt
echo "Verificamos que se ha renombrado correctamente..."
ls
echo ""

# Mueve nuevo_prueba.txt a la carpeta Documentos.
echo "Movemos el archivo nuevo_prueba.txt a la carpeta Documentos"
mkdir Documentos
mv nuevo_prueba.txt Documentos/
echo "Archivo movido correctamente."
echo ""

# Crea una carpeta llamada backup y copia prueba.txt dentro de ella.
echo "Creamos la carpeta llamada backup y copiamos prueba.txt dentro de ella."
mkdir backup
cp prueba.txt backup/
echo "Archivo copiado correctamente."
echo ""

# Copia toda la carpeta backup a backup_copia.
echo "Copiamos backup a backup_copia"
cp -r backup backup_copia
echo "Directorio copiado correctamente."
echo ""

# Elimina el archivo prueba.txt.
echo "Eliminamos el archivo prueba.txt"
rm prueba.txt
echo "Verificamos que el archivo está eliminado."
ls -lt
echo ""

# Elimina la carpeta backup y todo su contenido.
echo "Eliminamos la carpeta backup y su contenido:"
rm -r backup
echo "Directorio correctamente eliminado."
echo ""

# Usa touch para crear tres archivos (a.txt, b.txt, c.txt) y luego elimínalos de un solo comando.
echo "Creamos tres archivos y luego los eliminamos."
echo "Creando archivos..."
touch a.txt b.txt c.txt
echo "Archivos creados correctamente, procedemos a eliminarlos..."
rm a.txt b.txt c.txt
echo "Archivos eliminados correctamente."
