#!/bin/bash

#  Creo el array para almacenar los elementos
declare -a lista_compras

# Solicito los elemos a ingresar a la lista
echo "Ingresa los elementos que desees agregar a la lista de compras. Para terminar, escribe 'Completo'."
while true; do
    read -p "Elemento: " elemento
    if [ "$elemento" = "completo" ]; then
	break
    fi
    lista_compras+=("$elemento")
done

# Guardo la lista en el archivo .txt
archivo_lista="lista_compras.txt"
echo "Lista de compras:" >"$archivo_lista"
for item in "${lista_compras[@]}"; do
    echo "$item" >>"$archivo_lista"
done

echo "Has guardado correctamente la lista de compras:) '$archivo_lista'."
