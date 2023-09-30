#!/bin/bash
# Script de arranque para ejecutar un contenedor Docker con opciones personalizadas

# Detener y eliminar cualquier contenedor previo (esto es opcional)
# docker stop proyecto1_container
# docker rm proyecto1_container

# Ejecutar el contenedor Docker con las opciones personalizadas
sudo docker run --privileged --pid=host -p 8000:8000 egordo64/proyecto1