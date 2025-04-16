# Pon en práctica lo aprendido resolviendo los siguientes ejercicios:

# Ejecuta ls -l en tu directorio personal y describe qué información adicional proporciona en comparación con ls.
# Usa ls -a para ver los archivos ocultos en tu directorio.
# Encuentra el tamaño de los archivos en un directorio usando ls -l.
# Usa ls -la para ver detalles de archivos ocultos en /home/usuario.
# Compara la salida de ls, ls -l y ls -a en el mismo directorio.
# Encuentra la fecha de modificación más reciente de los archivos en tu directorio usando ls -lt.
# Usa ls -lh para mostrar los tamaños de los archivos en formato legible (KB, MB, GB).
# Identifica los archivos ejecutables en tu sistema con ls -l y revisa sus permisos.
# Crea un archivo oculto (.archivo_oculto) y verifica que no aparece con ls, pero sí con ls -a.
# Encuentra los cinco archivos más recientes en tu directorio usando ls -lt | head -5.

#!/bin/bash/

# Ejecuta ls -l en tu directorio personal y describe qué información adicional proporciona en comparación con ls.
echo "Ejecutamos ls y ls -l para comparar ambos resultados."
echo "Ejecución de ls: "
ls
echo "Ejecución de ls -l:"
ls -l
echo "####################"

# Usa ls -a para ver los archivos ocultos en tu directorio.
echo "Ejecutamos ls -a para ver los archivos ocultos:"
ls -a
echo "####################"

# Encuentra el tamaño de los archivos en un directorio usando ls -l.
echo "Ejecutamos ls -l para visualizar el tamaño de los archivos en un directorio:"
ls -l
echo "####################"

# Usa ls -la para ver detalles de archivos ocultos en /home/usuario.
echo "Usamos ls -la para ver detalles en la ruta /home/usuario:"
ls -la /home/bmsjale
echo "####################"

# Compara la salida de ls, ls -l y ls -a en el mismo directorio.
echo "Comparamos la salida de ls, ls -l y ls -a en el directorio /home/usuario:"
echo "Ejecutamos ls:"
ls /home/bmsjale
echo "####################"
echo "Ejecutamos ls -l:"
ls -l /home/bmsjale
echo "####################"
echo "Ejecutamos ls -a:"
ls -a /home/bmsjale
echo "####################"

# Encuentra la fecha de modificación más reciente de los archivos en tu directorio usando ls -lt.
echo "Buscamos la fecha de modificación más reciente con ls -lt:"
ls -lt /home/bmsjale
echo "####################"

# Usa ls -lh para mostrar los tamaños de los archivos en formato legible (KB, MB, GB).
echo "Mostramos los tamaños de los archivos en formato legible con ls -lh:"
ls -lh /home/bmsjale
echo "####################"

# Identifica los archivos ejecutables en tu sistema con ls -l y revisa sus permisos.
echo "Buscamos los archivos ejecutables en el sistema con ls -l y revisamos permisos:"
ls -l /home/bmsjale
echo "####################"

# Crea un archivo oculto (.archivo_oculto) y verifica que no aparece con ls, pero sí con ls -a.
echo "Creamos un archivo oculto y verificamos que no aparece con ls y sí con ls -a"
echo "Creamos el archivo..."
touch .archivo_oculto
echo "Archivo creado correctamente."
echo "Verificamos que no aparece con ls:"
ls
echo "Verificamos que si aparece con ls -a:"
ls -a

# Encuentra los cinco archivos más recientes en tu directorio usando ls -lt | head -5.
echo "Buscamos los 5 archivos más recientes en home/usuario:"
ls -lt /home/bmsjale | head -6