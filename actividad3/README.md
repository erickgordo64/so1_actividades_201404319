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
    ![adduser](img\adduser.png)


2. **Asignación de Contraseñas**:

   ```bash
   sudo passwd usuario1
   sudo passwd usuario2
   sudo passwd usuario3
   ```
    ![adduser](img\passwd.png)

3. **Información de Usuarios**:

   ```bash
   id usuario1
   ```
   ![adduser](img\id.png)

4. **Eliminación de Usuarios** (conservando el directorio principal):

   ```bash
   sudo userdel usuario3
   ```
   ![adduser](img\userdel.png)

## **Parte 2: Gestión de Grupos**

1. **Creación de Grupos**:

   ```bash
   sudo addgroup grupo1
   sudo addgroup grupo2
   ```
   ![adduser](img\addgroup.png)

2. **Agregar Usuarios a Grupos**:

   ```bash
   sudo usermod -aG grupo1 usuario1
   sudo usermod -aG grupo2 usuario2
   ```
   ![adduser](img\usermod.png)

3. **Verificar Membresía**:

   ```bash
   groups usuario1
   groups usuario2
   ```
   ![adduser](img\group.png)

4. **Eliminar Grupo**:

   ```bash
   sudo delgroup grupo2
   ```
   ![adduser](img\delgroup.png)

## **Parte 3: Gestión de Permisos**

1. **Creación de Archivos y Directorios**:

   ```bash
   touch ~/archivo1.txt
   echo "Contenido del archivo 1" > ~/archivo1.txt
   mkdir ~/directorio1
   touch ~/directorio1/archivo2.txt
   ```
   ![adduser](img\adduser.png)

2. **Verificar Permisos**:

   ```bash
   ls -l ~/archivo1.txt
   ls -ld ~/directorio1
   ```
   ![adduser](img\adduser.png)

3. **Modificar Permisos usando `chmod` con Modo Numérico**:

   ```bash
   chmod 640 ~/archivo1.txt
   ```
   ![adduser](img\adduser.png)

4. **Modificar Permisos usando `chmod` con Modo Simbólico**:

   ```bash
   chmod u+x ~/directorio1/archivo2.txt
   ```
   ![adduser](img\adduser.png)

5. **Cambiar el Grupo Propietario**:

   ```bash
   sudo chown :grupo1 ~/directorio1/archivo2.txt
   ```
   ![adduser](img\adduser.png)

6. **Configurar Permisos de Directorio**:

   ```bash
   chmod 750 ~/directorio1
   ```
   ![adduser](img\adduser.png)

7. **Comprobación de Acceso**:

   ```bash
   cat ~/archivo1.txt
   cat ~/directorio1/archivo2.txt
   ```
   ![adduser](img\adduser.png)

8. **Verificación Final**:

   ```bash
   ls -l ~/archivo1.txt
   ls -ld ~/directorio1
   ```
   ![adduser](img\adduser.png)