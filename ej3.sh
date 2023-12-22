#!/bin/bash

contLinux=0
contWindows=0
total_procesos_linux=0
total_procesos_windows=0

while read  linea; do
    so=$(echo $linea|awk '{print $2})')
    proc=$(echo $linea|awk '{print $3})')

    if [ $so = "Linux" ]; then
        total_procesos_linux=$((total_procesos_linux+1))
        contLinux=$((contLinux + proc))
    elif [ $proc = "Windows" ]; then
        total_procesos_windows=$((total_procesos_windows+1))
        contWindows=$((contWindows + proc))
    fi
done < listado.txt


echo "Linux -> $contLinux $total_procesos_linux"
echo "Windows -> $contWindows $total_procesos_windows"
