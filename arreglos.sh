#!/bin/bash


# Creo el arreglo
frutas=("Manzana" "banana" "uva" "naranja" "pera")

# Imprimo el contenido de el arrreglo
echo "imprimiendo las frutas: "
for fruta in "${frutas[@]}"; do
    echo $fruta
done
