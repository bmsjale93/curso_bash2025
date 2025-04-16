# Usa grep para encontrar todas las líneas que contengan la palabra "error" en un archivo log.txt.
# Usa grep -i para buscar "configuración" en un archivo sin importar mayúsculas o minúsculas.
# Filtra todas las líneas que NO contengan "advertencia" en un archivo de logs.
# Usa grep -c para contar cuántas veces aparece "usuario" en un archivo de configuración.
# Encuentra todas las líneas donde aparece "root" en /etc/passwd y muestra los números de línea.
# Usa grep -r para buscar la palabra "failed" en los archivos de la carpeta /var/log/.
# Filtra los procesos en ejecución que contengan la palabra "bash".
# Cuenta cuántos archivos en un directorio contienen la palabra "config" en su nombre.
# Usa grep para buscar todas las líneas que comiencen con "INFO" en un archivo de log.
# Busca líneas en un archivo que terminen con un número usando grep '[0-9]$' archivo.txt.

# Usa grep para encontrar todas las líneas que contengan la palabra "error" en un archivo log.txt.
echo "Creamos un archivo log.txt para aplicar filtros..."
cat << EOF > log.txt
Este es un archivo nuevo para el usuario
Buscaremos la palabra eRror
En cada linea que escribiremos una advertencia para el usuario
Habrá que mirar la Configuración del sistema
Aquí tendremos que mostrar una advertencia
Ya que el error puede encontrarse en la confiGuración
El problema es que no hay suficientes advertencias
Aunque un errOr no es fácil de encontrar, como un usuario
O el erRor puede ser buscar el mismo
Continuaremos buscando el Error
EOF
echo "Ahora, filtraremos el archivo para buscar la palabra error..."
cat log.txt | grep -i -c error

# Usa grep -i para buscar "configuración" en un archivo sin importar mayúsculas o minúsculas.
echo -e "\nAhora, buscaremos filtrar la palabra configuración en el mismo archivo..."
cat log.txt | grep -i -c configuración

# Filtra todas las líneas que NO contengan "advertencia" en un archivo de logs.
echo -e "\nAhora, buscaremos todas las líneas que NO contengan la palabra "advertencia"..."
cat log.txt | grep -v -c advertencia

# Usa grep -c para contar cuántas veces aparece "usuario" en un archivo de configuración.
echo -e "\nContaremos cuantas veces aparece usuario en el archivo..."
cat log.txt | grep -c usuario

# Encuentra todas las líneas donde aparece "root" en /etc/passwd y muestra los números de línea.
echo -e "\nBuscaremos 'root' en /etc/passwd y mostraremos los números de línea"¡
grep -n "root" /etc/passwd

# Usa grep -r para buscar la palabra "failed" en los archivos de la carpeta /var/log/.
echo -e "\nBuscaremos 'failed' en la carpeta /var/log/"
grep -r "failed" /var/log/ > log2.txt

# Filtra los procesos en ejecución que contengan la palabra "bash".
echo -e "\nFiltramos los procesos en ejecución con la palabra 'bash'..."
ps aux | grep bash > log3.txt

# Cuenta cuántos archivos en un directorio contienen la palabra "config" en su nombre.
echo -e "\nContamos el número de archivos en un directorio que contienen 'config' en su nombre..."
ls -lat /home/bmsjale | grep -c config

# Usa grep para buscar todas las líneas que comiencen con "INFO" en un archivo de log.
echo -e "\nCreamos un archivo con el que trabajaremos ahora..."
cat << EOF > prueba_final.txt
INFO
info
INFO
INFO
NOTA
NOTA
info
NOTA
INO
FINO
INFOR
GOMA
EOF
echo "Filtramos todas las líneas que comiencen con "INFO" en un archivo..."
cat prueba_final.txt | grep -n -i INFO

# Busca líneas en un archivo que terminen con un número usando grep '[0-9]$' archivo.txt.
echo -e "\nCreamos un archivo con el que trabajaremos ahora..."
cat << EOF > prueba_numeros.txt
Linea
Linea 9
Linea
Linea 10
Linea
Linea 15
Linea
Linea 4
Linea
Linea 3
EOF
echo "Buscamos líneas en el archivo que terminen en un número..."
cat prueba_numeros.txt | grep -n '[0-9]$'