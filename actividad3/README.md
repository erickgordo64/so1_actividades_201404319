# ACTIVIDAD 3
# SISTEMAS OPERATIVOS 1
# SECCION N

## **Parte 1: Gestión de Usuarios**

1. **Creación de Usuarios**:

   ```bash
   sudo adduser usuario1
   sudo adduser usuario2
   sudo adduser usuario3
   ```
    ![adduser](./img/adduser.png)


2. **Asignación de Contraseñas**:

   ```bash
   sudo passwd usuario1
   sudo passwd usuario2
   sudo passwd usuario3
   ```
    ![adduser](./img/passwd.png)

3. **Información de Usuarios**:

   ```bash
   id usuario1
   ```
   ![adduser](./img/id.png)

4. **Eliminación de Usuarios** (conservando el directorio principal):

   ```bash
   sudo userdel usuario3
   ```
   ![adduser](./img/userdel.png)

## **Parte 2: Gestión de Grupos**

1. **Creación de Grupos**:

   ```bash
   sudo addgroup grupo1
   sudo addgroup grupo2
   ```
   ![adduser](./img/addgroup.png)

2. **Agregar Usuarios a Grupos**:

   ```bash
   sudo usermod -aG grupo1 usuario1
   sudo usermod -aG grupo2 usuario2
   ```
   ![adduser](./img/usermod.png)

3. **Verificar Membresía**:

   ```bash
   groups usuario1
   groups usuario2
   ```
   ![adduser](./img/group.png)

4. **Eliminar Grupo**:

   ```bash
   sudo delgroup grupo2
   ```
   ![adduser](./img/delgroup.png)

## **Parte 3: Gestión de Permisos**

1. **Creación de Archivos y Directorios**:

   ```bash
    # Ingresar como usuario1 (si no estás logueado como usuario1)
    su usuario1

    # Crear un archivo llamado archivo1.txt y escribir algo en él
    echo "Contenido del archivo 1" > ~/archivo1.txt

    # Crear un directorio llamado directorio1
    mkdir ~/directorio1

    # Ingresar al directorio1
    cd ~/directorio1

    # Crear un archivo llamado archivo2.txt dentro de directorio1 y escribir algo en él
    echo "Contenido del archivo 2" > archivo2.txt
   ```
   ![adduser](./img/archivo.png)

2. **Verificar Permisos**:

   ```bash
   ls -l ~/archivo1.txt
   ls -ld ~/directorio1
   ```
   ![adduser](./img/verifica.png)

3. **Modificar Permisos usando `chmod` con Modo Numérico**:

   ```bash
   chmod 640 ~/archivo1.txt
   ```
   ![adduser](./img/modifica.png)

4. **Modificar Permisos usando `chmod` con Modo Simbólico**:

   ```bash
   chmod u+x ~/directorio1/archivo2.txt
   ```
   ![adduser](./img/modifica2.png)

5. **Cambiar el Grupo Propietario**:

   ```bash
   sudo chown :grupo1 ~/directorio1/archivo2.txt
   ```
   ![adduser](./img/chown.png)

6. **Configurar Permisos de Directorio**:

   ```bash
   chmod 750 ~/directorio1
   ```
   ![adduser](./img/chmod.png)

7. **Comprobación de Acceso**:

   ```bash
   # Ingresar como usuario1 (si no estás logueado como usuario1)
    su usuario1

   # intetar acceder a archivo1
   cat ~/archivo1.txt

   # intentar acceder a directorio1/archivo2.txt
   cat ~/directorio1/archivo2.txt
   ```
   ![adduser](./img/verfica3.png)

8. **Verificación Final**:

   ```bash
   ls -l ~/archivo1.txt
   ls -ld ~/directorio1
   ```
   ![adduser](./img/verfica4.png)