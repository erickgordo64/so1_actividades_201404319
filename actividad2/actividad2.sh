#!/bin/bash

# Verificar si se proporcionó un ID de usuario como argumento
if [ $# -eq 0 ]; then
    echo "Uso: $0 <ID de usuario>"
    exit 1
fi

# Directorio para guardar los logs con el nombre de la fecha actual
current_date="$(date +%Y-%m-%d)"

# Crear la carpeta si no existe
mkdir -p "/tmp/$current_date"

# Archivo de registro (log file)
LOG_FILE="/tmp/$current_date/saludos.log"

# API URL base
API_BASE_URL="https://api.github.com/users"

# Función para obtener datos del usuario por ID
function get_user_data() {
    id=$1
    api_url="$API_BASE_URL/$id"
    
    response=$(curl -s "$api_url")
    if [ $? -eq 0 ]; then
        # Utilizamos 'jq' para extraer un dato específico (por ejemplo, el nombre del usuario)
        git_login=$(echo "$response" | jq -r '.login')
        git_id=$(echo "$response" | jq -r '.id')
        git_date=$(echo "$response" | jq -r '.created_at')
        
        echo "Hola $git_login. User ID: $git_id. Cuenta fue creada el: $git_date." >> "$LOG_FILE"
        echo "Hola $git_login. User ID: $git_id. Cuenta fue creada el: $git_date."
    else
        echo "Error al obtener datos del usuario con ID $id desde la API."
    fi
}

# Llamamos a la función pasando el ID del usuario como argumento
get_user_data "$1"