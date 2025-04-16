# Práctica lo aprendido con estos ejercicios:

# Usa echo y > para crear un archivo de texto con contenido y visualízalo con cat.
# Crea un archivo con varias líneas (for i in {1..100}; do echo "Línea $i"; done > grande.txt) y ábrelo con less.
# Usa less para buscar la línea 50 dentro del archivo grande.txt.
# Visualiza grande.txt con more y avanza página por página.
# Usa cat para mostrar dos archivos concatenados en la terminal.
# Utiliza cat -n para ver un archivo con numeración de líneas.
# Usa less para revisar el contenido de /etc/passwd (si tienes permisos).
# Encuentra una palabra en un archivo con less y /termino.
# Explica la diferencia entre less y more con un ejemplo práctico.
# Usa cat para fusionar tres archivos de texto en uno nuevo (cat archivo1.txt archivo2.txt archivo3.txt > combinado.txt).

#!/bin/bash/
# Usa echo y > para crear un archivo de texto con contenido y visualízalo con cat.
echo "Creamos un nuevo archivo y lo visualizamos."
echo "Este es un nuevo archivo." > prueba.txt
cat prueba.txt
echo ""

# Crea un archivo con varias líneas (for i in {1..100}; do echo "Línea $i"; done > grande.txt) 
# y ábrelo con less.
echo "Creamos un nuevo archivo con 100 lineas "
for i in {1..100}; do
    echo "Linea $i" >> grande.txt;
done
echo "Archivo grande.txt creado correctamente."
echo ""

# Usa less para buscar la línea 50 dentro del archivo grande.txt.
echo "Usamos less para buscar una línea dentro de este archivo"
less grande.txt
echo "less utilizado correctamente."
echo ""

# Visualiza grande.txt con more y avanza página por página.
echo "Visualizamos grande.txt con more."
more grande.txt
echo "more utilizado correctamente."
echo ""

# Usa cat para mostrar dos archivos concatenados en la terminal.
echo "Usamos cat de forma concatenada..."
cat prueba.txt grande.txt
echo "Archivos visualizados de forma concatenada."
echo ""

# Utiliza cat -n para ver un archivo con numeración de líneas.
echo "Utilizamos cat -n para ver un archivo con numeración de líneas."
cat -n grande.txt
echo "Visualizado correctamente."
echo ""

# Usa less para revisar el contenido de /etc/passwd (si tienes permisos).
echo "Utilizamos less para revisar el contenido de /etc/passwd"
less /etc/passwd
echo "El contenido ha sido revisado."
echo ""

# Encuentra una palabra en un archivo con less y /termino.
echo "Búsqueda avanzada con less..."
less grande.txt
echo "Búsqueda realizada con éxito."
echo ""

# Explica la diferencia entre less y more con un ejemplo práctico.
echo "La diferencia entre less y more: "
echo "less: Permite ver contenido de archivos extensos sin sobrecargar la terminal."
echo "more: Igual que less, pero tiene menos funcionalidades."

# Usa cat para fusionar tres archivos de texto en uno nuevo
# (cat archivo1.txt archivo2.txt archivo3.txt > combinado.txt).

echo "Vamos a crear 3 archivos y los combinaremos..."
touch a.txt b.txt c.txt
echo "Combinamos los 3 archivos con cat."
cat a.txt b.txt c.txt > combinado.txt