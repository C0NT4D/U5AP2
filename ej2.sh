echo "Números pares:"
while read par; do
  if [ $((par % 2)) -eq 0 ]; then
    echo $par
    ((pares++))
  fi
done < "numeros.txt"

echo "Números impares:"
while read impar; do
  if [ $((impar % 2)) -ne 0 ]; then
    echo $impar
    ((impares++))
  fi
done < "numeros.txt"