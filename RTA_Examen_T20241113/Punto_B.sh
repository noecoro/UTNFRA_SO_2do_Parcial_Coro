#!/bin/bash
# Comandos para el punto B

# Crear el script AltaUser-Groups.sh en la ruta especificada
sudo vim /usr/local/bin/Coro/AltaUser-Groups.sh

# Dar permisos de ejecución al script
sudo chmod +x /usr/local/bin/Coro/AltaUser-Groups.sh

# Ejecutar el script para crear usuarios y grupos
sudo /usr/local/bin/Coro/AltaUser-Groups.sh osboxes /home/osboxes/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt

# Comprobaciones
cat /home/osboxes/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cat /etc/passwd
# Guardar el historial de comandos en un archivo
history > comandosScript.txt

