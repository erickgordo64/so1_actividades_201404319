# ACTIVIDAD 4
# SISTEMAS OPERATIVOS 1
# SECCION N

1. **Crea el script:**
   Crear el script que deseas ejecutar como un servicio.

   ```bash
   #!/bin/bash
   while true; do
       echo "Hola mundo, la fecha es: $(date)"
       sleep 5
   done
   ```

2. **Creación el archivo de unidad de servicio:**
   Crear un archivo llamado `hello-service.service` en el directorio `/etc/systemd/system/` con el siguiente contenido:

   ```plaintext
   [Unit]
   Description=Hello World Service
   
   [Service]
   ExecStart=/ruta/al/hello-script.sh
   Restart=always
   User=tu_usuario
   Group=tu_grupo
   StandardOutput=syslog
   
   [Install]
   WantedBy=multi-user.target
   ```

3. **Recarga de systemd y arranque del servicio:**
   Después de crear el archivo de unidad de servicio, recargar systemd y arrancar el servicio con los siguientes comandos:

   ```bash
   sudo systemctl daemon-reload
   sudo systemctl start hello-service.service
   ```

4. **Habilitación el servicio:**
   Para que el servicio se inicie automáticamente al arrancar el sistema, habilítarlo con el siguiente comando:

   ```bash
   sudo systemctl enable hello-service.service
   ```

5. **Verificación el estado del servicio:**
   Para verificar el estado del servicio con el siguiente comando:

   ```bash
   sudo systemctl status hello-service.service
   ```

   Esto mostrará información sobre si el servicio se está ejecutando, su estado y registros recientes.
