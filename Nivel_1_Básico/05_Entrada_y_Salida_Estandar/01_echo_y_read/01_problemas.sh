# Usa echo para mostrar un mensaje de bienvenida en la terminal.
echo "Bienvenido a mi script de Bash"

# Crea un script que pida el nombre del usuario y lo salude.
echo "Por favor, ingresa tu nombre: "
read nombre
echo "Bienvenido $nombre, un placer."

# Usa echo -e para imprimir un mensaje con saltos de línea y tabulaciones.
echo -e "\nEstamos utilizando saltos de línea. \tEsto está tabulado."

# Pide al usuario dos números y muestra su suma.
echo "Por favor, ingresa dos valores (separados por espacios): "
read num1 num2
suma=$((num1 + num2))
echo "La suma de $num1 y $num2 es: $suma"

# Usa read -s para solicitar una contraseña y muestra un mensaje confirmando que se ingresó.
echo "Por favor, ingresa una contraseña: "
read -s clave
echo "Contraseña ingresada correctamente."

# Crea un script que pregunte la edad del usuario y luego la muestre en pantalla.
echo "Por favor, indicanos tu edad: "
read edad
echo "Gracias, ya sabemos que tu edad es $edad."

# Usa read -p para pedir un dato con un mensaje personalizado.
read -p "Por favor, ingresa tu altura: " altura
echo "Perfecto! Tu altura es $altura cm."

# Crea un script que espere 5 segundos para recibir una respuesta del usuario.
read -t 5 -p "Escribe algo en 5 segundos: " respuesta
echo "Respuesta: $respuesta"

# Pide tres palabras al usuario y muéstralas en una sola línea separadas por comas.
read -p "Por favor, introduce 3 palabras (separadas por espacios): " word1 word2 word3
echo "Las 3 palabras introducidas son: $word1, $word2, $word3"

# Usa echo -n para mostrar un mensaje sin salto de línea y usa read para recibir una respuesta en la misma línea.
echo -n "Esto es un mensaje destinado al cielo"
read -p "¿Qué respondes a eso?" respuesta