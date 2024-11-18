# ComanIdos para el punto D
# Crear la estructura de directorios
mkdir -p /tmp/2do_parcial/{alumno,equipo}

# Verificar la estructura de directorios creada
tree /tmp/2do_parcial

# Crear el directorio de templates en el path correspondiente
mkdir -p templates

# Editar el archivo de template para datos del alumno
vim templates/datos_alumno.txt

# Editar el archivo de template para datos del equipo
vim templates/datos_equipo.txt

# Obtener la IP del equipo
hostname -I | awk '{print $1}'

# Obtener la distribución del sistema operativo
cat /etc/os-release | grep "^PRETTY_NAME" | cut -d= -f2 | tr -d '"'

# Abrir nuevamente para verificar o ajustar el archivo de datos del equipo
vim templates/datos_equipo.txt

# Comprobar el contenido de datos_equipo.txt
cat templates/datos_equipo.txt

# Editar el archivo sudoers para configurar permisos sin contraseña para el grupo "2PSupervisores"
sudo visudo

# Comprobar permisos de sudo sin contraseña
sudo whoami  # Para verificar que funciona correctamente

# Agregar al usuario 'osboxes' al grupo "2PSupervisores"
sudo usermod -aG 2PSupervisores osboxes
sudo visudo -cf /etc/sudoers.d/2PSupervisores
sudo whoami 
# Verificar la configuración en el archivo sudoers
sudo cat /etc/sudoers | grep 2PSupervisores

