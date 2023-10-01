#!/bin/bash
# Script de arranque para ejecutar un contenedor Docker con opciones personalizadas y montar modulos de ram y cpu
sudo insmod /home/erick_valenzuela_rivas_eg/SO1_2S2023_201404319/proyectos/proyecto1/modules/cpu/cpu.ko

sudo insmod /home/erick_valenzuela_rivas_eg/SO1_2S2023_201404319/proyectos/proyecto1/modules/ram/ram.ko
# Detener y eliminar cualquier contenedor previo (esto es opcional)
# docker stop proyecto1_container
# docker rm proyecto1_container

# Ejecutar el contenedor Docker con las opciones personalizadas
sudo docker run --privileged --pid=host -p 8000:8000 egordo64/proyecto1