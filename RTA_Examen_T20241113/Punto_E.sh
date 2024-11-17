# Comandos para el punto E
# Copiar la carpeta 202406 y su contenido
cp -r ~/UTN-FRA_SO_Examenes/202406 ./202406

# Ejecutar el comando history -a para actualizar 
history -a

# Dentro del repositorio, copiar subdirectorios específicos y archivos a la carpeta 202406
cp -r ~/UTN-FRA_SO_Examenes/202406/ansible ./202406/
cp -r ~/UTN-FRA_SO_Examenes/202406/docker ./202406/
cp ~/UTN-FRA_SO_Examenes/202406/202406_2doParcial.pdf ./202406/
cp ~/UTN-FRA_SO_Examenes/202406/script_Precondicion.sh ./202406/

# Copia la carpeta de respuestas del examen
cp -r ~/RTA_Examen_T20241113 .
history -a
cp ~/.bash_history .

