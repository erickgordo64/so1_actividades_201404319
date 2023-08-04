1. Abre una terminal o una consola en tu sistema.

2. Edita el archivo de tareas cron utilizando el editor de texto de tu preferencia. Por ejemplo, para utilizar el editor nano, ejecuta el siguiente comando:

   ```bash
   crontab -e
   ```

3. Añade una nueva línea al archivo para especificar el cron job. La línea debe tener el siguiente formato:

   ```bash
   */5 * * * * /ruta/al/script.sh
   ```

   Donde `/ruta/al/script.sh` es la ruta completa hacia tu script que deseas ejecutar cada 5 minutos.

4. Guarda los cambios y cierra el editor.

La descripción de los campos en la línea del cron job es la siguiente:

- `*/5`: Significa "cada 5" en el campo de minutos, lo que indica que se ejecutará cada 5 minutos.
- `*` en los campos de la hora, día del mes, mes y día de la semana indica que no se restringe el valor. Es decir, se ejecutará en cualquier hora, día, mes y día de la semana.

Recuerda que si el script está ubicado en una ruta específica, asegúrate de proporcionar la ruta correcta en el cron job.

Guarda el cron job y el sistema se encargará de ejecutar el script automáticamente cada 5 minutos. Puedes verificar que el cron job se haya configurado correctamente utilizando el siguiente comando:

```bash
crontab -l
```

Esto mostrará las tareas cron programadas para el usuario actual, y deberías ver la nueva entrada que agregaste para ejecutar tu script cada 5 minutos.