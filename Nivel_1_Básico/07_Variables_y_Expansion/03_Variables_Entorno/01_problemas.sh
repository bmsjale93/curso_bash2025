# Usa echo para mostrar el valor de $HOME, $USER y $PATH.
# Muestra la ruta del shell en uso con $SHELL.
# Modifica temporalmente $PATH añadiendo un nuevo directorio y verifica el cambio.
# Crea una variable de entorno personalizada y úsala en un comando echo.
# Añade una variable de entorno a ~/.bashrc para que sea permanente.
# Usa $PWD para mostrar el directorio actual.
# Consulta el nombre de tu máquina con $HOSTNAME.
# Cambia el idioma de la sesión temporalmente modificando $LANG.
# Usa env para listar todas las variables de entorno disponibles en el sistema.
# Usa unset para eliminar una variable de entorno y verifica que ya no existe.

# Usa echo para mostrar el valor de $HOME, $USER y $PATH.
echo "Mostramos el valor de \$HOME, \$USER y \$PATH"
echo "\$HOME: $HOME"
echo "\$USER: $USER"
echo "\$PATH: $PATH"

# Muestra la ruta del shell en uso con $SHELL.
echo -e "\nMostramos la ruta del shell..."
echo "Shell: $SHELL"

# Modifica temporalmente $PATH añadiendo un nuevo directorio y verifica el cambio.
echo -e "\nModificamos temporalmente \$PATH añadiendo un nuevo directorio..."
export PATH=$PATH:/opt/mi_directorio/bin
echo "Verificamos que se haya cambiado correctamente..."
echo "\$PATH: $PATH"

# Crea una variable de entorno personalizada y úsala en un comando echo.
echo -e "\nCreamos una variable de entorno personalizada..."
export SALUDO="Hola! Estamos creando una variable personalizada."
echo "Mostramos la variable de entorno creada: \$SALUDO -> $SALUDO"

# Añade una variable de entorno a ~/.bashrc para que sea permanente.
echo -e "\nAhora, crearemos una variable de entorno que haremos permanente..."
echo 'export SALUDO2="¡Bienvenido a Bash! Esto es una variable de entorno permanente"' >> ~/.bashrc
# Recargar ~/.bashrc para aplicar los cambios en la sesión actual
source ~/.bashrc
echo "Verificamos que la variable se ha creado correctamente..."
echo "\$SALUDO2 -> ${SALUDO2}"

# Usa $PWD para mostrar el directorio actual.
echo -e "\nAhora, mostraremos el directorio actual utilizando \$PWD"
echo "\$PWD -> $PWD"

# Consulta el nombre de tu máquina con $HOSTNAME.
echo -e "\nConsultamos el nombre de mi máquina con \$HOSTNAME"
echo "\$HOSTNAME -> $HOSTNAME"

# Cambia el idioma de la sesión temporalmente modificando $LANG.
echo -e "\nAhora, cambiaremos el idioma temporalmente con \$LANG"
echo "Idioma actual -> $LANG"
echo "Cambiamos el idioma actual..."
export $LANG=es_ES.UTF-8
echo "Idioma cambiado temporalmente a: $LANG"
echo "Para verificación, mostraremos la fecha en el nuevo idioma"
date
echo "Restauramos al nuevo idioma..."
export LANG=C
echo "Idioma restaurado a: $LANG"

# Usa env para listar todas las variables de entorno disponibles en el sistema.
echo -e "\nVamos a listar todas las variables de entorno disponibles en el sistema."
env

# Usa unset para eliminar una variable de entorno y verifica que ya no existe.
echo -e "\nVamos a utilizar unset para eliminar las variables SALUDO que hemos creado anteriormente..."
echo "Comprobamos que ambas variables existen actualmente..."
echo "\$SALUDO -> $SALUDO"
echo "\$SALUDO2 -> $SALUDO2"
unset SALUDO
unset SALUDO2
echo "Verificamos que se han borrado correctamente..."
echo "\$SALUDO -> $SALUDO (Si no aparece nada es que ha sido borrada correctamente)"
echo "\$SALUDO2 -> $SALUDO2 (Si no aparece nada es que ha sido borrada correctamente)"
