# Usa echo para escribir "Hola, mundo" en un archivo mensaje.txt usando >.
# Añade otra línea al archivo mensaje.txt usando >>.
# Usa cat con redirección de entrada (<) para mostrar el contenido de mensaje.txt.
# Crea un archivo numeros.txt con cinco números (uno por línea) y usa wc -l con < para contar las líneas.
# Redirige la salida de ls a un archivo lista_archivos.txt.
# Usa echo para escribir el mensaje "Registro iniciado" en log.txt, luego añade "Nueva entrada" sin sobrescribir.
# Ejecuta date y guarda la fecha en un archivo fecha.txt.
# Usa cat < mensaje.txt > copia.txt para copiar el contenido de mensaje.txt a copia.txt.
# Crea un script que tome un archivo de entrada y genere un archivo de salida con la cantidad de palabras (wc -w).
# Usa cat con redirección de entrada para leer y mostrar el contenido de un archivo creado previamente.

# Usa echo para escribir "Hola, mundo" en un archivo mensaje.txt usando >.
echo "Escribimos un texto y lo redirigimos a un archivo..."
echo "Hola, mundo" > mensaje.txt

# Añade otra línea al archivo mensaje.txt usando >>.
echo -e "\nEn el mismo archivo, escribimos una línea adicional..."
echo "Esto es una nueva línea" >> mensaje.txt


# Usa cat con redirección de entrada (<) para mostrar el contenido de mensaje.txt.
echo -e "\nComprobamos que se ha insertado correctamente..."
cat < mensaje.txt

# Crea un archivo numeros.txt con cinco números (uno por línea) y usa wc -l con < para contar las líneas.
echo -e "\nCreamos un archivo con cinco números (uno por línea) y los contamos...."
for i in {1..5}; do
    echo "Linea $i" >> numeros.txt
done
echo "El archivo se ha creado correctamente, contamos las líneas..."
wc -l < numeros.txt

# Redirige la salida de ls a un archivo lista_archivos.txt.
echo -e "\nAhora, redigiremos el comando ls a un nuevo archivo (lista_archivos.txt)..."
ls > lista_archivos.txt
echo "Comprobamos que el archivo se ha creado correctamente..."
cat < lista_archivos.txt

# Usa echo para escribir el mensaje "Registro iniciado" en log.txt, luego añade "Nueva entrada" sin sobrescribir.
echo -e "\nAhora, crearemos un archivo de log para cuando estemos trabajando..."
echo "Registro iniciado" > log.txt
echo "Nueva entrada" >> log.txt
echo "Comprobamos que el archivo se ha generado correctamente..."
cat < log.txt

# Ejecuta date y guarda la fecha en un archivo fecha.txt.
echo -e "Ejecutamos date y lo guardamos en un archivo (fecha.txt)"
date >> fecha.txt
echo "Comprobamos que el archivo se ha generado correctamente..."
cat fecha.txt

# Usa cat < mensaje.txt > copia.txt para copiar el contenido de mensaje.txt a copia.txt.
echo -e "\nAhora, copiaremos el contenido del archivo mensaje.txt a copia.txt..."
cat < mensaje.txt > copia.txt
echo "Comprobamos que la copia se ha realizado correctamente..."
cat copia.txt

# Crea un script que tome un archivo de entrada y genere un archivo de salida con la cantidad de palabras (wc -w).
echo -e "\nTomaremos un archivo de entrada (numeros.txt) y generaremos un archivo de 
salida con la cantidad de palabras..."
wc -w < numeros.txt > copia_numeros.txt
echo "Comprobamos que el archivo se ha generado correctamente..."
cat copia_numeros.txt

# Usa cat con redirección de entrada para leer y mostrar el contenido de un archivo creado previamente.
echo -e "Finalmente, mediante redirección, leeremos y mostraremos el contenido del archivo fecha.txt"
cat < fecha.txt
