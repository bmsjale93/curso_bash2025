# Crea flow2.sh que imprima los números del 1 al 10 y salte los múltiplos de 3 (usa continue).

for i in {1..10}; do
    if (( i % 3 == 0 )); then
        continue
    fi
    echo "Contador: $i"
done

