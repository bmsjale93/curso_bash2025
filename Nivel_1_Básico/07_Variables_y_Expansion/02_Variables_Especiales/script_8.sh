#!/bin/bash
echo "Ejecutando el script."
if [ $# -eq 0 ]; then
    echo "Error: No se ha pasado ningún argumento."
    echo "Uso: $0 <argumento1> <argumento2> ..."
    exit 1  # Salir con código de error
fi

# Si hay argumentos, los mostramos
echo "Número de argumentos recibidos: $#"
echo "Argumentos: $@"
