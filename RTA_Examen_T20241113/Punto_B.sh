# Comandos para el punto B
# Ejemplo del script para crear usuarios y grupos
sudo groupadd 2P_GDesa
sudo useradd -m -g 2P_GDesa -p clave 2P_202406_Prog1
sudo groupadd 2P_GTest
sudo useradd -m -g 2P_GTest -p clave 2P_202406_Test1

# 1. Crear el script AltaUser-Groups.sh en el directorio especificado
sudo vim /usr/local/bin/Coro/AltaUser-Groups.sh

# 2. Hacer que el script sea ejecutable
sudo chmod +x /usr/local/bin/Coro/AltaUser-Groups.sh

# 3. Ejecutar el script para crear usuarios y grupos, tomando la clave de 'osboxes'
#    y leyendo los usuarios y grupos desde el archivo Lista_Usuarios.txt
sudo /usr/local/bin/Coro/AltaUser-Groups.sh osboxes /home/osboxes/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt

# 4. Verificar el contenido del archivo Lista_Usuarios.txt para asegurar el formato correcto
cat /home/osboxes/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt

# 5. Guardar el historial de comandos en un archivo para referencia
history > comandosScript.txt

== PUNTO CCCC CC
sudo usermod -aG docker osboxes
vim index.html
mv Dockerfile.sh Dockerfile
sudo docker build -t noeliacoro/web1-coro .
sudo docker tag web1-coro noeliacoro/web1-coro
docker login -u noeliacoro
sudo docker push noeliacoro/web1-coro
echo '#!/bin/bash' > run.sh
echo 'docker run -d -p 8080:80 noeliacoro/web1-coro' >> run.sh
chmod +x run.sh
./run.sh
 http://localhost:8080
