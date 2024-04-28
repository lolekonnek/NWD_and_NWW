
#!/bin/bash

# --- Program do obliczania NWD i NWW ---

# --- Pobierz pierwszą liczbę ---
read -p "Enter the first number: " num1

# --- Pobierz drugą liczbę ---
read -p "Enter the second number: " num2

# --- Oblicz NWD ---
x=$num1
y=$num2
while [ $y -ne 0 ]; do
    temp=$y
    y=$(($x % $y))
    x=$temp
done
nwd=$x

# --- Oblicz NWW ---
nww=$((($num1 * $num2) / $nwd))

# --- Wyświetl wyniki ---
echo "NWD: $nwd"
echo "NWW: $nww"