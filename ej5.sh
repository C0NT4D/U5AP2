#!/bin/bash

total_precipitaciones=0
contador_dias=0

while read linea; do
    cantidad_litros=$(echo "$linea" | awk '{print $2}')
    total_precipitaciones=$((total_precipitaciones + cantidad_litros))
    ((contador_dias++))
    done < "precipitaciones.txt"

    if [ "$contador_dias" -gt 0 ]; then
        media_precipitaciones=$((total_precipitaciones / contador_dias))
        echo "La media de precipitaciones es: $media_precipitaciones litros por día"
fi