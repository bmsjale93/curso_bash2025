# Ejercicio 17: Control de Permisos en un Archivo
# Crea un script verificar_permisos.sh que:
# Reciba un archivo como argumento.
# Muestre si el archivo tiene permisos de lectura (r), escritura (w) y ejecución (x).
# Ejemplo de uso:
# ./verificar_permisos.sh script.sh

# Salida esperada:
# Permisos de script.sh:
# Lectura: Sí
# Escritura: No
# Ejecución: Sí

# Puntos a evaluar: uso de ls -l, if, test.

#!/bin/bash

# Comprobamos que se pasan los argumentos necesarios
if [ $# -ne 1 ]; then
    echo "Error: Debes pasar un archivo como argumento."
    echo "Uso: $0 <archivo>"
    exit 1
fi

# Pasamos el archivo como argumento
archivo=$1

# Comprobamos que el archivo existe
if [ ! -f "$archivo" ]; then
    echo "El archivo '$archivo' no existe."
    exit 1
fi

# Verificamos los permisos
lectura="No"
escritua="No"
ejecucion="No"

# Comprobamos si tiene permisos de lectura
if [ -r "$archivo" ]; then
    lectura="Si"
fi

# Comprobamos si tiene permisos de escritura
if [ -w "$archivo" ]; then
    escritura="Si"
fi

# Comprobamos si tiene permisos de ejecución
if [ -x "$archivo" ]; then
    ejecucion="Si"
fi

# Mostramos los permisos
echo "Permisos de '$archivo':"
echo "Lectura: $lectura"
echo "Escritura: $escritura"
echo "Ejecución: $ejecucion"