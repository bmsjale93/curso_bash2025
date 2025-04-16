# Pon en práctica lo aprendido resolviendo los siguientes ejercicios en tu terminal:

# Usa pwd para verificar en qué directorio estás actualmente.
# Usa ls para listar los archivos y carpetas dentro de tu directorio.
# Crea un nuevo directorio llamado prueba_directorio.
# Ingresa al directorio prueba_directorio usando cd.
# Vuelve al directorio anterior.
# Crea un archivo llamado ejemplo.txt dentro de prueba_directorio.
# Borra el archivo ejemplo.txt.
# Intenta eliminar prueba_directorio con rmdir y observa qué sucede.
# Elimina prueba_directorio usando rm -r.
# Crea una nueva carpeta llamada mis_proyectos y dentro de ella, crea otra carpeta llamada python.

#!/bin/bash

# Usa pwd para verificar en qué directorio estás actualmente.
echo "El directorio actual es $(pwd)"

# Usa ls para listar los archivos y carpetas dentro de tu directorio.
echo "Listamos los archivos y carpetas dentro del directorio actual"
ls 

# Crea un nuevo directorio llamado prueba_directorio.
echo "Creamos un nuevo directorio llamado prueba_directorio"
mkdir prueba_directorio

# Ingresa al directorio prueba_directorio usando cd.
echo "Ingresamos en el nuevo directorio que hemos creado"
cd prueba_directorio
echo "Directorio actual: $(pwd)"

# Vuelve al directorio anterior.
echo "Volvemos al directorio anterior."
cd ..
echo "Directorio actual: $(pwd)"

# Crea un archivo llamado ejemplo.txt dentro de prueba_directorio.
echo "Creamos el archivo ejemplo.txt en prueba_directorio"
touch prueba_directorio/ejemplo.txt

# Borra el archivo ejemplo.txt.
echo "Borramos el archivo ejemplo.txt"
rm prueba_directorio/ejemplo.txt

# Intenta eliminar prueba_directorio con rmdir y observa qué sucede.
echo "Intentamos eliminar el directorio prueba_directorio"
rmdir prueba_directorio >> log.txt 2>&1

# Elimina prueba_directorio usando rm -r.
echo "Eliminamos el directorio prueba_directorio con rm -r"
rm -r prueba_directorio >> log.txt 2>&1

# Crea una nueva carpeta llamada mis_proyectos y dentro de ella, crea otra carpeta llamada python.
echo "Creamos la ruta mis_proyectos/python"
mkdir -p mis_proyectos/python >> log.txt 2>&1