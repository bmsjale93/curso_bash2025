# Declara una variable llamada saludo con el valor "Hola, Bash" y muéstrala en la terminal.
# Crea una variable nombre y usa echo para mostrar un mensaje personalizado con ella.
# Asigna la fecha actual a una variable y muéstrala en pantalla.
# Declara dos variables numéricas y realiza una suma con $(( )).
# Usa expr para calcular la diferencia entre dos números y mostrar el resultado.
# Declara una variable de solo lectura y prueba modificarla.
# Usa unset para eliminar una variable y verifica que ya no existe.
# Guarda el nombre del usuario actual en una variable y muéstralo en pantalla.
# Declara una variable con el resultado de ls y muestra su contenido.
# Usa $(date +%Y-%m-%d) para guardar la fecha en un formato específico y mostrarla.

# Declara una variable llamada saludo con el valor "Hola, Bash" y muéstrala en la terminal.
saludo="Hola, Bash"
echo $saludo
echo ""

# Crea una variable nombre y usa echo para mostrar un mensaje personalizado con ella.
nombre="Alex"
echo "Bienvenido a la terminal, $nombre"
echo ""

# Asigna la fecha actual a una variable y muéstrala en pantalla.
fecha=$(date)
echo "La fecha actual es $fecha"
echo ""

# Declara dos variables numéricas y realiza una suma con $(( )).
num1=12
num2=18
suma=$(($num1 + $num2))

echo "La suma total es $suma"
echo ""

# Usa expr para calcular la diferencia entre dos números y mostrar el resultado.
num1=35
num2=20
resultado=$(expr $num1 - $num2)
echo "La diferencia entre num1 y num2 es $resultado"
echo ""

# Declara una variable de solo lectura y prueba modificarla.
readonly constante="Valor inmutable"
echo $constante
echo "Intentamos modificarla"
constante="Nuevo valor"
echo $constante
echo ""

# Usa unset para eliminar una variable y verifica que ya no existe.
nombre="Alex"
echo $nombre
echo "Procedemos a eliminar la variable"
unset nombre
echo "Comprobamos que la variable se ha eliminado."
echo $nombre
echo ""

# Guarda el nombre del usuario actual en una variable y muéstralo en pantalla.
nombre=$USER
echo "El nombre del usuario actual es $nombre"
echo ""

# Declara una variable con el resultado de ls y muestra su contenido.
echo "Creamos una variable que guardará el resultado de lanzar ls sobre home/usuario"
resultado=$(ls /home/bmsjale/)
echo $resultado
echo ""

# Usa $(date +%Y-%m-%d) para guardar la fecha en un formato específico y mostrarla.
fecha=$(date +%Y-%m-%d)
echo "La fecha actual es $fecha"