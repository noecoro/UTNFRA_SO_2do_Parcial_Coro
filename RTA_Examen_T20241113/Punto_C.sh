# Comandos para el punto C
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

