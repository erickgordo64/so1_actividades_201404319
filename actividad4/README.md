# ACTIVIDAD 4
# SISTEMAS OPERATIVOS 1
# SECCION N

1. **Crea el script:**
   Crea el script que deseas ejecutar como un servicio. En este ejemplo, vamos a usar un script llamado `hello-script.sh` que imprime un saludo y la fecha actual:

   ```bash
   #!/bin/bash
   while true; do
       echo "Hola mundo, la fecha es: $(date)"
       sleep 5
   done
   ```

   Guarda este script en una ubicación de tu elección. En este ejemplo, asumiré que lo has guardado en `/ruta/al/hello-script.sh`.

2. **Crea el archivo de unidad de servicio:**
   Crea un archivo llamado `hello-service.service` en el directorio `/etc/systemd/system/` con el siguiente contenido:

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

   Asegúrate de reemplazar `/ruta/al/hello-script.sh` con la ruta completa al script que creaste y `tu_usuario` y `tu_grupo` con tus valores reales.

3. **Recarga systemd y arranca el servicio:**
   Después de crear el archivo de unidad de servicio, recarga systemd y arranca el servicio con los siguientes comandos:

   ```bash
   sudo systemctl daemon-reload
   sudo systemctl start hello-service.service
   ```

4. **Habilita el servicio:**
   Para que el servicio se inicie automáticamente al arrancar el sistema, habilítalo con el siguiente comando:

   ```bash
   sudo systemctl enable hello-service.service
   ```

5. **Verifica el estado del servicio:**
   Puedes verificar el estado del servicio con el siguiente comando:

   ```bash
   sudo systemctl status hello-service.service
   ```

   Esto te mostrará información sobre si el servicio se está ejecutando, su estado y registros recientes.
