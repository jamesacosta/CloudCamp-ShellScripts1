#!/bin/bash

# Creo una carpeta 
carpeta="carpeta_$(date +'%Y%m%d_%H%M%S')"

# Elimino la carpeta si ya existe
if [ -d "$carpeta" ]; then
    rm -rf "$carpeta"
fi 

# Creo la carpeta
mkdir "$carpeta"

# Me muevo a la nueva carpeta

cd "$carpeta" || exit 

# Creo los 10 archivos dentro de mi carpeta

for ((i = 1; i <= 10; i++)); do
    nombre_archivo="archivo_$i.txt"
    fecha_hora=$(date +'%Y-%m-%d %H:%M:%S') 
    echo "Fecha y hora de creacion: $fecha_hora" >"$nombre_archivo"
done

echo "Se han creado la carpeta '$carpeta' y los archivos dentro."
 
