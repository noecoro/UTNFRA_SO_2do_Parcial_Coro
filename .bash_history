whoami
ls
ls -l
tail -f/var/log/dmesg
sudo tail -f/var/log/dmesg
sudo tail -f /var/log/dmesg
journalctl -fk
journalctl -fk | grep -i nic
sudo apt install tree
tree
pwd
ls
ls -l
tree
mkdir clase4
tree
cd clase4
ls
mkdir practica
ls
cd practica
touch archivo1.txt
ls -l
cp archivo1.txt archivo2.txt 
ls
rm -i archivo1.txt
ls
mv archivo2.txt /home/osboxes/clase4
ls
cd cd ..
cd ..
ls
rmdir practica
ls
w
last
mkdir facturas pedidos
tree
mkdir -p cliente/{facturas,pedidos}
tree
mkdir -p {clientes,proveedores}/{facturas,pedidos}
tree
rm -r cliente
tree
mkdir -p contactos/{clientes,proveedores}/{facturas,pedidos}
tree
mkdir -p coro_1/contactos/{clientes,proveedores}/{facturas,pedidos}
tree
mkdir -p coro_2/{mama/hijo{1..3},papa/{ahijado,jijo{1..3}}}
tree
rm -r coro_2
mkdir -p coro_2/{mama/hijo{1..3},papa/{ahijado,hijo{1..3}}}
tree
clear
cat /proc/cpuinfo
cat /proc/cpuinfo | grep -i proce
cat /proc/cpuinfo | grep -i proce | awk '{print}'
cat /proc/cpuinfo | grep -i proce | awk '{print$2}'
cat /proc/cpuinfo | grep -i proce | awk '{print$3}'
cat /proc/cpuinfo | grep -i proce | awk -F ':' '{print$2}'
nproc
cat /etc/passwd
cat /etc/passwd | grep osboxes
cat /etc/shadow
sudo cat /etc/shadow
cat /etc/group
sudo su
sudo groupadd Alumnos
tail /etc/group
sudo useradd -m -s /bin/bash -c "Alumno pepe" -G Alumnos pepe
ls /home/
id pepe
id
ls -l
passwd pepe
sudo passwd pepe
sudo tail /etc/shadow
su pepe
su - pepe
grep pepe /etc/shadow | awk-F ':' '{print $2}'
sudo grep pepe /etc/shadow | awk-F ':' '{print $2}'
sudo grep pepe /etc/shadow | awk -F ':' '{print $2}'
sudo useradd-m-s /bin/bash-c "usuario juan" -p "$(sudo grep pepe /etc/shadow | awk -F ':' '{print $2}')" juan
sudo useradd -m -s /bin/bash-c "usuario juan" -p "$(sudo grep pepe /etc/shadow | awk -F ':' '{print $2}')" juan
ls -l
sudo grep -E 'pepe|juan' /etc/shadow | awk -F ':' '{print $2}'
cat /etc/passwd
usermod -s /bin/sh pepe
sudo usermod -s /bin/sh pepe
cat /etc/passwd
exit
sudo apt update
sudo apt install -y manpages-es
sudo localectl set-locale LANG=es_AR.UTF-8
locale
man man
sudo apt install language-pack-es
sudo localectl set-locale LANG=es_AR.UTF-8
man man
exit
ls
ls -l
cd Documents
ls
echo "buenos dias" > saludo1.txt
echo "los dias semana" > saludo2.txt
echo "buenas noches" > saludo3.txt
ls -l
find -name "*.txt" | xarg grep "dias"
echo "los dias del mes" > saludo4
find -name "*.txt"
find -name "*.txt" | xargs grep "dias"
find -name "*.txt" | xargs grep "saludo"
find -name "*.txt" |  grep "saludo"
find -name "*.txt" | xargs cat
cd ..
clear
pwd
sudo cat /etc/sudoers
vim /etc/sudoers
sudo vim /etc/sudoers
sudo apt install vim
vim --version
sudo vim /etc/sudoers
sudo visudo
ls -l /etc/sudoers.d
which chown
which chmod
cd Documents
ls -l
chown pepe saludo4
sudo chown pepe saludo4
ls -l
sudo chown :pepe saludo4
ls -l
whoami
echo "chau" >> saludo4
sudo echo "chau" >> saludo4
cd ..
ls -l
sudo chown pepe:pepe Documents
ls -l
sudo chown -R osboxes:osboxes Documents/
ls -l
ls -l Documents/
cd Documents
clear
ls -l
chmod o+w saludo4
ls -l
chmod g-w saludo4
ls -l
chmod u+x saludo4
ls -l
chmod u-x saludo4
ls -l
chmod g+w,o-w saludo4
ls -l
chmod 777 saludo4
ls -l
chmod 764 saludo4
ls -l
chmod 664 saludo4
ls -l
cd ..
ls -l
chmod -R 640 Documents/
sudo chmod -R 640 Documents/
ls -l
sudo ls -l Documents/
clear
pwd
ls -l/home
ls -l /home
cd pepe
cd /home/pepe
sudo cd /home/pepe
cd /home/pepe
sudo chmod 754 /home/pepe
sudo chmod 754 /home/pepe/
ls -l
cd /home/pepe
ls -l /home/pepe
su pepe
su - pepe
pwd
sudo chow osboxes:osboxes /home/pepe/textopepe.txt 
sudo chown osboxes:osboxes /home/pepe/textopepe.txt 
ls -l
ls -l /home/pepe/
sudo ls -l /home/pepe/
mkdir clase5
ls -l
cd clase5
touch practica1.txt
touch practica2.txt
ls -l
chmod 600 practica1.txt
ls -l
chmod 444 practica2.txt
ls -l
echo "linea" >> practica2.txt
sudo echo "linea" >> practica2.txt
chmod 644 practica2.txt
ls -l
echo "linea" >> practica2.txt
cat practica2.txt
cd ..
ls -l
chmod -R 777 clase5/
ls -l
ls -l clase5
cd clase5
ls -l
chmod 666 *.txt
ls -l
exit
sudo fdisk -l
sudo fdisk /dev/sdb
sudo fdisk
fdisk -l
fdisk
sudo fdisk
sudo apt install gparted
sudo gparted
sudo fdisk -l
sudo fdisk /dev/sdb
sudo fdisk
sudo fdisk -l
sudo mkfs -t ext4 /dev/sdb1
sudo mkfs -t ext4 /dev/sdb2 && sudo mkfs -t ext4 /dev/sdb3
sudo mkdir -p /mnt/parte{1..3}
sudo ls -l /mnt/
sudo mount /dev/sdb1 /mnt/parte1
lsblk -f
sudo mount /dev/sdb2 /mnt/parte2
sudo mount /dev/sdb3 /mnt/parte3
lsblk -f
df -h
ls -l
pwd
whoami
echo "ls -l" > script1
cat script1 
bashs script1 
bash script1 
echo "pwd" > script2
cat script2
echo "whoami" >> script2
cat script2
bash script2
vim script3.sh
ls -l
./script3.sh
sudo ./script3.sh
sudo chmod 764 scritp3.sh
sudo chmod 764 script3.sh
ls -l
./script3.sh 
ls -l
cd carpeta1/
ls -l
nano script4.sh
cat script4.sh 
chmod 764 script4.sh 
ls -l
./script4.sh 
vim primerif.sh
cd ..
fdisk -l
sudo fdisx -l
sudo fdisk -l
sudo fdisk /dev/sdb
sudo fdisk
sudo fdisk -l
lsblk -f
sudo mkdir -p /mnt/parte{5..6}
tree /mnt
sudo mkfs.ext4 /dev/sdb5
sudo mkfs.ext4 /dev/sdb6
lsblk -f
sudo mount /dev/sdb1 /mnt/parte1
sudo mount /dev/sdb2 /mnt/parte2
sudo mount /dev/sdb3 /mnt/parte3
sudo mount /dev/sdb5 /mnt/parte5
sudo mount /dev/sdb6 /mnt/parte6
lsblk -f
cat /etc/fstab
echo "/dev/sdb1 /mnt/parte1 ext4 defaults 0 0"
echo "/dev/sdb1 /mnt/parte1 ext4 defaults 0 0" | sudo tee -a /etc/fstab"
echo "/dev/sdb1 /mnt/parte1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb2 /mnt/parte2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb3 /mnt/parte3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb5 /mnt/parte5 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb6 /mnt/parte6 ext4 defaults 0 0" | sudo tee -a /etc/fstab
sudo mount -a
cat /etc/fstab
exit
sudo lsblk
sudo - juan
cat /etc/passwd
sudo adduser juan
sudo fdisk -l | grep "2 G"
sudo fdisk -l | grep "2 G" | awk '{print $2}' | awk -F ":" '{print $1}'
DISCO=$(sudo fdisk -l | grep "2 G" | awk '{print $2}' | awk -F ":" '{print $1}')
echo $DISCO
sudo fdisk $DISCO
free 
free | grep "Mem" | awk '{print $2}'
free | grep "Mem"
free | grep "Mem" | awk '{print $2}'
MEMO=$(free | grep "Mem" | awk '{print $2}')
echo $MEMO
exit
git version
tree --version
git --version
mkdir repogit
ls -l
cd repogit/
cd repogit
cd ..
cd repogit
pwd
cd ..
[200~cd $HOME/repogit
cd $HOME/repogit
pwd
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
git clone https://github.com/noecoro/UTNFRA_SO_1P2C_2024_Coro.git
ssh-keygen -t ed25519 -C "coronoelia@gmail.com"
cat ~/.ssh/id_ed25519.pub
git clone https://github.com/noecoro/UTNFRA_SO_1P2C_2024_Coro.git
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
git clone https://github.com/noecoro/UTNFRA_SO_1P2C_2024_Coro.git
git clone git@github.com:noecoro/UTNFRA_SO_1P2C_2024_Coro.git
ls -l
cd UTN-FRA_SO_Examenes/
LS -L
ls -l
cd ..
cd ~/repogit/UTN-FRA_SO_Examenes/202410
./script_Precondicion.sh ~/.bashrc && history -a
./script_Precondicion.sh
source ~/.bashrc && history -a
tree ~/repogit/UTNFRA_SO_1P2C_2024_Coro
vim ~/repogit/UTNFRA_SO_1P2C_2024_Coro/RTA_SCRIPT_Examen_20241001/Punto_A.sh
cd ..
mkdir -p /Examenes-UTN/{alumno_{1,2,3}/parcial_{1,2,3},profesores}
sudo mkdir -p /Examenes-UTN/{alumno_{1..3}/parcial_{1..3},profesores}
tree Ex
sudo tree /Examenes-UTN
chmod 755 /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_Coro/RTA_SCRIPT_Examen_20241001/Punto_A.sh
sudo /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_Coro/RTA_SCRIPT_Examen_20241001/Punto_A.sh
ls -l
sudo tree /Examenes-UTN
cd /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_Coro
git add RTA_SCRIPT_Examen_20241001/Punto_A.sh
git commit -m "feat: Punto A estructura simétrica"
git config --global user.name "noecoro"
git config --global user.email "coronoelia@gmail.com"
git commit -m "feat: Punto A estructura simétrica"
git push origin main
sudo fdisk -l
vim Punto_B.sh
sudo parted /dev/sdc print
vim Punto_B.sh
chmod 755 Punto_B.sh
sudo ./Punto_B.sh
sudo fdisk -l /dev/sdc
vim Punto_B.sh
sudo ./Punto_B.sh
sudo fdisk -l /dev/sdc
sudo fdisk /dev/sdc
sudo fdisk -l /dev/sdc
sudo umount /dev/sdc*
vim Punto_B.sh
sudo ./Punto_B.sh
sudo umount /dev/sdc1
sudo fdisk /dev/sdc
sudo fdisk -l /dev/sdc
vim Punto_B.sh
sudo ./Punto_B.sh
sudo fdisk -l /dev/sdc
sudo fdisk /dev/sdc
sudo umount /dev/sdc1
sudo fdisk -l /dev/sdc
vim Punto_B.sh
sudo ./Punto_B.sh
sudo fdisk -l /dev/sdc
sudo fdisk /dev/sdc
sudo fdisk -l /dev/sdc
sudo umount /dev/sdc1
vim Punto_B.sh
sudo ./Punto_B.sh
sudo fdisk -l /dev/sdc
cat /etc/fstab
df -h | grep /Examenes-UTN
vim Punto_B.sh
sudo ./Punto_B.sh
cat /etc/fstab
sudo fdisk -l /dev/sdc
sudo umount /dev/sdc1
sudo umount /dev/sdc2
sudo umount /dev/sdc3
sudo umount /dev/sdc5
sudo umount /dev/sdc6
sudo umount /dev/sdc7
sudo umount /dev/sdc8
sudo umount /dev/sdc9
sudo umount /dev/sdc10
vim Punto_B.sh
sudo umount /Examenes-UTN/alumno_1/parcial_1
sudo umount /Examenes-UTN/alumno_1/parcial_2
sudo umount /Examenes-UTN/alumno_1/parcial_3
sudo umount /Examenes-UTN/alumno_2/parcial_1
sudo umount /Examenes-UTN/alumno_2/parcial_2
sudo umount /Examenes-UTN/alumno_2/parcial_3
sudo umount /Examenes-UTN/alumno_3/parcial_1
sudo umount /Examenes-UTN/alumno_3/parcial_2
sudo umount /Examenes-UTN/alumno_3/parcial_3
sudo umount /Examenes-UTN/profesores
sudo fdisk /dev/sdc
sudo fdisk -l /dev/sdc
sudo sfdisk --delete /dev/sdc
sudo fdisk -l /dev/sdc
vim Punto_B.sh
sudo ./Punto_B.sh
vim Punto_B.sh
sudo ./Punto_B.sh
vim Punto_B.sh
sudo ./Punto_B.sh
sudo fdisk -l /dev/sdc
cat /etc/fstab
sudo vim /etc/fstab
sudo fdisk /dev/sdc
cat /etc/fstab
sudo systemctl daemon-reload
sudo mount -a
sudo fdisk /dev/sdc
sudo mount -a
sudo fdisk -l /dev/sdc
sudo mount /dev/sdc11 /Examenes-UTN/profesores
sudo mkfs.ext4 /dev/sdc11
sudo mount /dev/sdc11 /Examenes-UTN/profesores
df -h | grep Examenes-UTN
vim Punto_B.sh
sudo fdisk /dev/sdc
sudo fdisk -l /dev/sdc
sudo umount /dev/sdc1
sudo umount /dev/sdc2
sudo umount /dev/sdc3
sudo umount /dev/sdc5
sudo umount /dev/sdc6
sudo umount /dev/sdc7
sudo umount /dev/sdc8
sudo umount /dev/sdc9
sudo umount /dev/sdc10
sudo umount /dev/sdc11
sudo fdisk -l /dev/sdc
vim Punto_B.sh
sudo ./Punto_B.sh
vim Punto_B.sh
sudo ./Punto_B.sh
sudo fdisk -l /dev/sdc
df -h | grep /dev/sdc
lsblk
realpath Punto_B.sh
history
find ~ -name "Punto_B.sh"
ls -l
cd repogit/
ls -l
cd UTNFRA_SO_1P2C_2024_Coro/
LS -L
ls -l
cd RTA_SCRIPT_Examen_20241001/
LS -L
ls -l
vim Punto_B.sh
cat Punto_B
cat Punto_B.sh
git status
git add Punto_B.sh
git commit -m "Script de particiones en Punto_B.sh"
git push
ls -l
vim Punto_C.sh
chmod 755 Punto_C.sh
ls -l Punto_B.sh
ls -l Punto_C.sh
chmod 755 Punto_B.sh
ls -l Punto_B.sh
git add Punto_B.sh
git commit -m "Permiso de ejecución para Punto_B.sh"
git push
ls -l
vim Punto_C.sh 
grep osboxes /etc/shadow | awk -F ':' '{print $2}'
sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}'
vim Punto_C.sh
./Punto_C.sh 
ls -l
cat Punto_C.sh 
getent group p1c2_2024_gAlumno
getent group p1c2_2024_gProfesores
getent passwd p1c2_2024_A1
getent passwd p1c2_2024_A2
getent passwd p1c2_2024_A3
getent passwd p1c2_2024_P1
groups p1c2_2024_A1
groups p1c2_2024_A2
groups p1c2_2024_A3
groups p1c2_2024_P1
ls -ld /Examenes-UTN/alumno_1
ls -ld /Examenes-UTN/alumno_2
ls -ld /Examenes-UTN/alumno_3
ls -ld /Examenes-UTN/profesores
ls -l /Examenes-UTN/alumno_1/validar.txt
ls -l /Examenes-UTN/alumno_2/validar.txt
ls -l /Examenes-UTN/alumno_3/validar.txt
ls -l /Examenes-UTN/profesores/validar.txt
sudo ls -ld /Examenes-UTN/alumno_1
sudo ls -ld /Examenes-UTN/alumno_2
sudo ls -ld /Examenes-UTN/alumno_3
sudo ls -ld /Examenes-UTN/profesores
sudo ls -l /Examenes-UTN/alumno_1/validar.txt
sudo ls -l /Examenes-UTN/alumno_2/validar.txt
sudo ls -l /Examenes-UTN/alumno_3/validar.txt
sudo ls -l /Examenes-UTN/profesores/validar.txt
cd ..
cd .
cd ..
cd ...
cd ..
pwd
cd ~
pwd
mkdir -p /Estructura_Asimetrica/{correo/{cartas_{1..100},carteros_{1..10}},clientes/cartas_{1..100}}
sudo mkdir -p /Estructura_Asimetrica/{correo/{cartas_{1..100},carteros_{1..10}},clientes/cartas_{1..100}}
tree /Estructura_Asimetrica/
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 90 --column 4
sudo apt-get install tree
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 90 --columns=4
tree Estructura_Asimetrica/ --noreport | column
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --columns=4
tree /Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --columns=4
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --columns=4
cd home/osboxes
cd /home
cd /osboxes
cd osboxes
cd /home/osboxes
pwd
mkdir -p Estructura_Asimetrica/{correo/{cartas_{1..100},carteros_{1..10}},clientes/cartas_{1..100}}
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --columns=4
ls -l
cd repo
cd repogit/
ls -l
cd UTNFRA_SO_1P2C_2024_Coro/
LS -L
ls -l
cd RTA_ARCHIVOS_Examen_20241001/
ls -l
cd ..
cd RTA_SCRIPT_Examen_20241001/
ls -l
chmod 755 Punto_D.sh
vim Punto_D
ls -l
vim Punto_D.sh 
git status
git add Punto_D.sh
git commit -m "Estructura- script del Punto D"
git push origin main
vim Punto_C.sh 
git add Punto_C.sh
git commit -m "Usuarios- script del Punto C"
git push origin main
vim Punto_B.sh 
git status
git add Punto_B.sh
git commit -m "Particiones script del Punto_B"
git push origin main
cd ..
ls -l
cd RTA_ARCHIVOS_Examen_20241001/
ls -l
mkdir -p RTA_ARCHIVOS_Examen_$(date +%Y%m%d)
grep MemTotal /proc/meminfo > RTA_ARCHIVOS_Examen_$(date +%Y%m%d)/Filtro_Basico.txt
sudo dmidecode -t chassis | grep Manufacturer >> RTA_ARCHIVOS_Examen_$(date +%Y%m%d)/Filtro_Basico.txt
cat RTA_ARCHIVOS_Examen_$(date +%Y%m%d)/Filtro_Basico.txt
ls -l
cd RTA_ARCHIVOS_Examen_20241002/
ls -l
cat Filtro_Basico.txt 
tree RTA_ARCHIVOS_Examen_20241001/
cd ..
tree RTA_ARCHIVOS_Examen_20241001/
ls -l
tree --noreport
vim RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt
sudo dmidecode -t chassis
vim RTA_ARCHIVOS_Examen_$(date +%Y%m%d)/Filtro_Basico.txt
./ RTA_ARCHIVOS_Examen_$(date +%Y%m%d)/Filtro_Basico.txt
vim RTA_ARCHIVOS_Examen_$(date +%Y%m%d)/Filtro_Basico.txt
ls -l
cd RTA_ARCHIVOS_Examen_20241002/
ls -l
cd ..
cat RTA_ARCHIVOS_Examen_20241001/
cat RTA_ARCHIVOS_Examen_20241001/Filtro_Basico.txt
ls -l RTA_ARCHIVOS_Examen_20241001/
ls -l RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/
cat RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt
vim Punto_E.sh
chmod 755 Punto_E.sh
./Punto_E.sh
sudo chmod 755 Punto_E.sh
./Punto_E.sh
sudo ./Punto_E.sh
ls -l
ls RTA_ARCHIVOS_Examen_20241001/
ls RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/
cat RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt
vim Punto_E.sh 
./Punto_E.sh 
vim Punto_E.sh 
./Punto_E.sh 
cat RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt
vim Punto_E.sh 
./Punto_E.sh 
cat RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt
vim Punto_E.sh 
cat RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt
./Punto_E.sh 
git status
git add Punto_E.sh 
git commit -m "Script Punto_E.sh con filtro de memoria y chasis"
git push
git add RTA_ARCHIVOS_Examen_20241001/
git commit -m "RTA_ARCHIVOS Punto_E.sh"
git push
git status
gti add RTA_SCRIPT_Examen_20241001/Punto_E.sh 
git add RTA_SCRIPT_Examen_20241001/Punto_E.sh 
git commit -m "RTA_SCRIPT_Examen_20241001 Punto_E.sh"
git push
ls -l
ls RTA_ARCHIVOS_Examen_20241001/
ls RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/
cd RTA_SCRIPT_Examen_20241001/
ls -l
vim Punto_F.sh 
chmod 755 Punto_F.sh
./Punto_F.sh 
sudo apt-get update
sudo apt-get install curl
./Punto_F.sh 
ls -l
vim Punto_E.sh 
chmod 755 Punto_E.sh
./Punto_E.sh 
ls -l RTA_ARCHIVOS_Examen_20241001/
cd ..
ls -l RTA_ARCHIVOS_Examen_20241001/
ls -l RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/
ls -l
ls -l RTA_SCRIPT_Examen_20241001/
vim Punto_E.sh 
LS -L
ls -l
touch README.md
vim README.md
ls -l
git add README.md 
git commit -m "README para inscripción"
git push
vim README.md
git add README.md 
git commit -m "README para inscripcion"
git push
history -a
vim ~/.bash_history
cp ~/bash_history ~/repogit/UTNFRA_SO_1P2C_2024_Coro/
cd ~/bash_history ~/repogit/UTNFRA_SO_1P2C_2024_Coro/
cp ~/.bash_history ~/repogit/UTNFRA_SO_1P2C_2024_Coro/
cd ~/repogit/UTNFRA_SO_1P2C_2024_Coro/
git status
git add .bash_history 
git commit -m "Bash history de examen y clases"
git status
git add .
git status
git push
git push origin main
git push
ls -l
git push
ping github.com
git push
git status
ls -l
rm Punto_E.sh 
ls -l
fdisk
fdisk -l
lsblk
df -h
ls -l
cat README.md 
ls RTA_SCRIPT_Examen_20241001/
cd RTA_SCRIPT_Examen_20241001
ls
ls -la
ls -l
cat Punto_A.sh 
cat Punto_B.sh 
cat Punto_C.sh 
cat Punto_D.sh 
./Punto_D.sh 
cat Punto_E.sh 
./Punto_E.sh 
ls -l tu_script.sh
ls -l Punto_E.sh
chmod 755 Punto_E.sh
./Punto_E.sh 
vim Punto_E.sh 
cd..
cd ..
cd RTA_ARCHIVOS_Examen_20241001/
ls -l
ls -l RTA_ARCHIVOS_Examen_20241002/
cd RTA_ARCHIVOS_Examen_20241002/
ls -l
cat Filtro_Basico.txt 
cd ..
ls -l
cat RTA_ARCHIVOS_Examen_20241001/Filtro_Basico.txt
cd RTA_SCRIPT_Examen_20241001/
ls -l-
ls -l
./Punto_E.sh 
ls -l
vim Punto_E.sh 
./Punto_E.sh 
cat RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt
cat RTA_ARCHIVOS_Examen_20241001/Filtro_Basico.txt
cd ..
cat RTA_ARCHIVOS_Examen_20241001/Filtro_Basico.txt
ls -ld RTA_ARCHIVOS_Examen_20241001
ls -l RTA_ARCHIVOS_Examen_20241001/Filtro_Basico.txt
ls -ld RTA_ARCHIVOS_Examen_20241001
ls -l RTA_ARCHIVOS_Examen_20241001/Filtro_Basico.txt
ls -l
chmod 755 RTA_ARCHIVOS_Examen_20241001
cat RTA_ARCHIVOS_Examen_20241001/Filtro_Basico.txt
chmod -R 755 RTA_ARCHIVOS_Examen_20241001
cat RTA_ARCHIVOS_Examen_20241001/Filtro_Basico.txt
chmod -R 744 RTA_ARCHIVOS_Examen_20241001
cat RTA_ARCHIVOS_Examen_20241001/Filtro_Basico.txt
ls -l RTA_ARCHIVOS_Examen_20241001
find RTA_ARCHIVOS_Examen_20241001 -name "Filtro_Basico.txt"
ls -l
cd RTA_SCRIPT_Examen_20241001/
ls -l
vim Punto_E.sh 
mv RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt RTA_ARCHIVOS_Examen_20241001/
ls -l
ls -l RTA_ARCHIVOS_Examen_20241001
cd ..
cd RTA_SCRIPT_Examen_20241001/
cd ..
cat RTA_ARCHIVOS_Examen_20241001/Filtro_Basico.txt
cat /RTA_SCRIPT_Examen_20241001
cat /RTA_SCRIPT_Examen_20241001/
cat /RTA_SCRIPT_Examen_20241001/Filtro_Basico.txt
cat RTA_SCRIPT_Examen_20241001/Filtro_Basico.txt
cat RTA_SCRIPT_Examen_20241001/RTA_ARCHIVOS_Examen_20241001/Filtro_Basico.txt
cat RTA_ARCHIVOS_Examen_20241001/Filtro_Basico.txt
find . -name "Filtro_Basico.txt"
mv RTA_SCRIPT_Examen_20241001/RTA_ARCHIVOS_Examen_20241001/Filtro_Basico.txt RTA_ARCHIVOS_Examen_20241001/
ls -l RTA_ARCHIVOS_Examen_20241001/
cat RTA_ARCHIVOS_Examen_20241001/Filtro_Basico.txt
ls -l
RTA_S
RTA_SCRIPT_Examen_20241001/
ls -l
cd repogit/
ls -l
ls -l UTN-FRA_SO_Examenes/
cd UTNFRA_SO_1P2C_2024_Coro/
LS -L
ls -l
cd RTA_SCRIPT_Examen_20241001/
ls -l
vim Punto_E.sh 
./Punto_E.sh 
cd ..
cat RTA_ARCHIVOS_Examen_20241001/Filtro_Basico.txt
cd RTA_ARCHIVOS_Examen_20241001/
ls -l
ls -l RTA_ARCHIVOS_Examen_20241002/
cat Filtro_Basico.txt 
ls -l
cd ..
ls -l
cd RTA_SCRIPT_Examen_20241001/
ls -l
vim Punto_F.sh 
find . -name "Filtro_Avanzado.txt"
ls -l RTA_ARCHIVOS_Examen_20241002
cd RTA_ARCHIVOS_Examen_20241002
cat Filtro_Avanzado.txt 
ls -l
cd ..
ls -l
vim Punto_F.sh 
git status
git ..
git add .
git commit -m "Correcion de permisos"
git push
ls -l
vim Punto_E.sh 
./Punto_E.sh 
cd ..
ls -l
ls -lh
git status
git rm Punto_E.sh
git commit -m "Eliminar Punto_E.sh y actualizar Filtro_Basico.txt"
git push
ls -l
cd RTA_SCRIPT_Examen_20241001/
ls -l
fdisk
ls -l
rm -r Punto_B.sh 
ls -l
cd repogit/
ls -l
ls -l UTN-FRA_SO_Examenes/
ls -l 202410
cd 202410
cd UTN-FRA_SO_Examenes/
ls -l
ls -l 202410
cd 202410
ls -l
vim script_Precondicion.sh 
cat README.md 
ls -l
ls -l _checks/
cd _checks/
ls -l
vim check_A.sh 
cd ..
pwd
cd repogit/
ls -l
cd ..
ls -l
cd ..
ls -l
UTNFRA_SO_1P2C_2024_Coro/
cd UTNFRA_SO_1P2C_2024_Coro/
ls -l
cd RTA_SCRIPT_Examen_20241001/
LS -L
ls -l
cd ..
cd RTA_ARCHIVOS_Examen_20241001/
LS -L
ls -l
cd ..
tree UTNFRA_SO_1P2C_2024_Coro/
LS -L
ls -l
cd UTNFRA_SO_1P2C_2024_Coro/
ls -l
tree RTA_ARCHIVOS_Examen_20241001
tree RTA_SCRIPT_Examen_20241001
ls -l RTA_SCRIPT_Examen_20241001/
ls -l RTA_ARCHIVOS_Examen_20241001/
ls -l RTA_ARCHIVOS_Examen_20241002/
ls -l RTA_SCRIPT_Examen_20241001/RTA_ARCHIVOS_Examen_20241002
rm -rf RTA_ARCHIVOS_Examen_20241002
ls -l
tree UTNFRA_SO_1P2C_2024_Coro/
cd ..
tree UTNFRA_SO_1P2C_2024_Coro/
mv RTA_SCRIPT_Examen_20241001/Filtro_Basico.txt RTA_SCRIPT_Examen_20241001/RTA_ARCHIVOS_Examen_20241001/
ls -l
cd UTNFRA_SO_1P2C_2024_Coro/
mv RTA_SCRIPT_Examen_20241001/Filtro_Basico.txt RTA_SCRIPT_Examen_20241001/RTA_ARCHIVOS_Examen_20241001/
mv RTA_SCRIPT_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt RTA_SCRIPT_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/
cd RTA_SCRIPT_Examen_20241001/
LS -L
ls -l
rm -r [200~RTA_ARCHIVOS_Examen_20241001
rm -r RTA_ARCHIVOS_Examen_20241001
rm -r RTA_ARCHIVOS_Examen_20241002
ls -l
cd ..
tree UTNFRA_SO_1P2C_2024_Coro/
cd ..
tree UTNFRA_SO_1P2C_2024_Coro/
ls -l
cd UTNFRA_SO_1P2C_2024_Coro/
ls -l
cd RTA_ARCHIVOS_Examen_20241001/
LS -L
ls -l
vim Filtro_Basico.txt 
cd RTA_ARCHIVOS_Examen_20241002/
ls -l
vim Filtro_Basico.txt 
cd ..
cd RTA_SCRIPT_Examen_20241001/
ls -l
vim Punto_E.sh 
vim Punto_F.sh 
./Punto_E.sh 
./Punto_F.sh 
cd ..
cd RTA_SCRIPT_Examen_20241001/
ls -l
rm -r RTA_ARCHIVOS_Examen_20241001
ls -l
vim Punto_E.sh 
./Punto_E.sh 
ls -l
vim Punto_F.sh 
rm -r RTA_ARCHIVOS_Examen_20241002/
ls -l
./Punto_F.sh 
vim Punto_F.sh 
./Punto_F.sh 
ls -l
rm -r RTA_ARCHIVOS_Examen_20241001/
ls -l
./Punto_F.sh 
ls -l
cd ..
cd RTA_ARCHIVOS_Examen_20241001/
ls -l
ls -l RTA_ARCHIVOS_Examen_20241002/
rm -r Filtro_Basico.txt 
ls -l
ls -l RTA_ARCHIVOS_Examen_20241002/
cd RTA_ARCHIVOS_Examen_20241002/
ls -l
rm -r Filtro_Basico.txt 
ls -l
cd ..
git status
git add RTA_SCRIPT_Examen_20241001/Punto_E.sh
git add RTA_SCRIPT_Examen_20241001/Punto_F.sh
git add RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt
git rm RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt
git rm RTA_SCRIPT_Examen_20241001/RTA_ARCHIVOS_Examen_20241001/Filtro_Basico.txt
git rm RTA_SCRIPT_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt
git status
git commit -m "fix(scripts): corregir rutas de archivos en Punto_E.sh y Punto_F.sh"
git push
cd ..
tree UTNFRA_SO_1P2C_2024_Coro/
ls -l
cd UTNFRA_SO_1P2C_2024_Coro/
ls -l
ls -l RTA_ARCHIVOS_Examen_20241001/
cd RTA_ARCHIVOS_Examen_20241001/
ls -l
cd ..
cd RTA_SCRIPT_Examen_20241001/
ls -l
vim Punto_E.sh 
./Punto_E.sh 
sudo ./Punto_E.sh 
cls -l
ls -l
cd ..
cd RTA_ARCHIVOS_Examen_20241001/
ls -l
cd ..
tree UTNFRA_SO_1P2C_2024_Coro/
ls -l
cd UTNFRA_SO_1P2C_2024_Coro/
LS -L
als -l
ls -l
cd RTA_SCRIPT_Examen_20241001/
ls -l
vim Punto_D.sh 
./Punto_D.sh 
ls -l
cd ..
ls -l
cd ..
ls -l
cd repogit/
ls -l
cd UTNFRA_SO_1P2C_2024_Coro/
ls -l
cd ..
tree UTNFRA_SO_1P2C_2024_Coro/
cd UTNFRA_SO_1P2C_2024_Coro/
LS -L
ls -l
cd RTA_SCRIPT_Examen_20241001/
ls -l
rm -r Estructura_Asimetrica/
ls -l
git status
git add -A
git commit -m "fix: actualizar Punto_D.sh y eliminar archivos mal creados"
git push
man man
ls -l
cat Punto_A.sh 
cd ..
ls -l
cd ..
ls -l
cd repogit/
ls -l
cd UTNFRA_SO_1P2C_2024_Coro/
ls -l
cd RTA_SCRIPT_Examen_20241001/
ls -l
vim Punto_A.sh 
sudo find / -type d -name "Examenes-UTN"
cat Punto_A.sh 
./Punto_A.sh 
sudo ./Punto_A.sh 
ls -l
sudo find /Examenes-UTN -type d
df -hT /Examenes-UTN/*
sudo tree /Examenes-UTN
lsblk
df -h
lsblk -f
ls -l
vim Punto_C.sh 
git status
ls -l
cat Punto_C.sh 
vim Punto_C.sh 
./Punto_C.sh 
git status
git add Punto_C.sh 
git commit -m "fix(Punto_C): corregido error permisos"
git push
ls -l
vim Punto_A.sh 
./Punto_A.sh 
vim Punto_A.sh 
./Punto_A.sh 
ps
man ls
history
pwd
ls -la $HOME
man sort
sudo tail -f /var/log/dmesg
journalctl -fk | grep -i nic
cat/proc/cpuinfo | less
ls -l
rm -i clase4/
rm -i script1 
rm -i script2
mkdir practica
cd practica/
ls -l
mkdir practicaexamen
ls -l
cd practicaexamen/
touch mipractica.txt
ls -l
cp mipractica.txt micopia.txt
ls -l
rm -i mipractica.txt 
ls -l
mv micopia.txt /home/osboxes/practica
ls -l
cd ..
ls -l
ls
rmdir practicaexamen/
ls
whoami
w
last
cd ..
id
cd practica/
mkdir -p dir1/dir2/dir3/dir4
tree dir1/
rm dir
rm dir1
rm -r dir1
ls -l
mkdir -p {dir1,dir2}/subdir{1..3}
tree dir1
tree /dir1
tree
tree dir1 dir2
mkdir -p {dir1/subdir{1..3},dir2/{subdir{1..3},otrodir}}
tree
tree dir1 dir2
tree dir2
ls
ls -l
ls -lt dir2
mkdir -p /ex/{alumno_{1..3}/parcial_{1..3},profesores}
mkdir -p ex/{alumno_{1..3}/parcial_{1..3},profesores}
tree
tree ex
mkdir -p coro/ex/{alumno_{1..3}/parcial_{1..3},profesores}
tree coro
mkdir -p lala{mama/hijo_{1..3},papa/{ahijado,hijo{1..3}}}
tree lala
tree
rm -r lala
rm -r lalamama
tree
rm -r lalapapa/
mkdir -p lala/{mama/hijo_{1..3},papa/{ahijado,hijo{1..3}}}
tree
cat /etc/proc/cpuinfo
cat /proc/cpuinfo
cat /proc/cpuinfo | grep -i proce
cat /proc/cpuinfo | grep -i proce | awk '{print}'
cat /proc/cpuinfo | grep -i proce | awk '{print3}'
cat /proc/cpuinfo | grep -i proce | awk '{print2}'
cat /proc/cpuinfo | grep -i proce | awk '{print$2}'
cat /proc/cpuinfo | grep -i proce | awk '{print$3}'
cat /proc/cpuinfo | grep -i proce | awk -F':' '{print$3}'
cat /proc/cpuinfo | grep -i proce | awk -F':' '{print$2}'
nproc
grep osboxes /etc/passwd
/etc/passwd
/etc/shadow
shadoww
shadow
sudo grep osboxes /etc/shadow
cat /etc/passwd
cat /etc/passwd | grep osboxes
sudo cat /etc/shadow
sudo cat /etc/group
su pepe
sudo groupadd grupoprueba 
tail /etc/group
sudo useradd -m -s /bin/bash -c "comentario  usuario prueba" -G grupoprueba usuarioprueba
ls /home/
id usuarioprueba 
id
ls -l
sudo passwd usuarioprueba 
sudo tail /etc/shadow
su usuarioprueba 
su - usuarioprueba 
sudo useradd -m -s /bin/bash -c "comentario misma contraseña" -p "$(sudo grep usuarioprueba /etc/shadow | awk -F ':' '{print$2}')" usuariomismapass
ls -l /home/
su - usuariomismapass 
sudo usermod -s /bin/sh
cat /etc/passwd
sudo usermod -s /bin/sh usuariomismapass 
cat /etc/passwd
cd ..
ls -l
cd Documents/
cd Documents
cd Documents/
sudo cd Documents/
chmod 755 Documents/
ls -l
cd Documents/
ls -l
echo "probando" > probar.txt
echo "probanding" > probar2.txt
echo "probandingall" > probar3.txt
$ find -name "*.txt" | xargs grep "proband"
$ find -name "*.txt" | xargs grep "prob"
$ find -name "*.txt" | xargs grep "probando"
ls -l
$ find -name "*.txt" | xargs grep "probanding"
find -name "*.txt" | xargs grep "probanding"
echo "notxt" > noestxt
ls -l
find -name "*.txt"
find -name "*.txt" | grep "probanding"
find -name "*.txt" | xarg cat
find -name "*.txt" | xargs cat
cd ..
ls -l
cd repogit/
ls -l
cd UTNFRA_SO_1P2C_2024_Coro/
LS -L
ls -l
find -name "*.txt" | xargs cat
find -name "*.sh" | xargs cat
.. /
cd ..
cd Documents/
ls -l
/etc/sudoers
cat /etc/sudoers
cd ..
cat /etc/sudoers
sudo cat /etc/sudoers
sudo vim /etc/sudoers
visudo vim /etc/sudoers
sudo visudo vim /etc/sudoers
sudo visudo /etc/sudoers
ls -l /etc/sudoers.d
cd Documents/
ls -l
sudo chown usuariomismapass saludo4 
ls -l
sudo chown :usuariomismapass saludo4 
ls -l
whoami
cd ..
ls -l
sudo chown -R osboxes:osboxes Documents/
ls -l
ls -l Documents/
cd Documents/
ls -l
chmod o+w saludo4
ls -l
chmod g-w saludo4
ls -l
chomd o+r saludo4
chmod o+r saludo4
ls -l
chmod u+x saludo4
ls -l
chmod u-x saludo4
ls -l
chmod g+w,o-w saludo4
ls -l
chmod 777 saludo4
ls -l
cd ..
ls -l
chmod -R 640 Documents/
sudo chmod -R 640 Documents/
ls -l
sudo ls -l Documents/
chmod 745 Documents/
ls -l
chmod 754 Documents/
ls -l
chmod 755 Documents/
ls -l
clear
pwd
ls -l /home/
su - p1c2_2024_A
cd /home/p1c2_2024_A1/
cd /home/p1c2_2024_A1
cd /home/p1c2_2024_A2
cd /home/p1c2_2024_A3
cd /home/p1c2_2024_P1
cd /home/pepe
cd /home/juan
su pepe
pwd
su - p1c2_2024_A1
su  p1c2_2024_A1
su p1c2_2024_A1
su -p p1c2_2024_A1
pwd
sudo chown osboxes:osboxes /home/p1c2_2024_A1/textoA1.txt
ls -l
sudo ls -l /home/p1c2_2024_A1/
mkdir claseprueba
cd claseprueba/
touch practicapp1.txt
touch practicapp2.txt
ls -l
chmod 600 practicapp1.txt 
ls -l
chmod 222 practicapp2.txt 
ls -l
cd ..
sudo fdisk -l /dev/sdc
lsblk
ls -l
ls -l /Examenes-UTN/
ls -lR /Examenes-UTN/
sudo fdisk /dev/sdd
ps
vim defensa
vim prueba.sh
chmod 777 prueba.sh
./prueba.sh 
lsblk
ls -l
lsblk
ls -l
lsblk
ls -l
cd clase4
ls -l
chmod 740 archivo2.txt 
ls -l
cd ..
ls -l
cd clase4
ls -l
chmod 760 archivo2.txt 
cd ..
pwd
ls -l /etc/apt/
ls -l /etc/apt/sources.list.d
cat /etc/apt/sources.list.d/ubuntu.sources 
sudo apt update 
sudo apt install mc
n
exit
sudo fdisk
sudo fdisk -l
lsblk
fdisk
sudo fdisk
sudo fdisk /dev/sde
sudo apt update
sudo apt install apache2
ls -l /var
ls -l /var/www
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
./script_Precondicion.sh
source  ~/.bashrc  && history -a 
sudo apt install software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
mkdir ~/RTA_Examen_T$(date +%Y%m%d)
echo "comandos punto A" > ~/RTA_Examen_T$(date +%Y%m%d)/Punto_A.sh
git clone https://github.com/noecoro/UTNFRA_SO_2do_Parcial_Coro.git
ls -l
cd UTNFRA_SO_2do_Parcial_Coro/
ls -l
cp -r ~/RTA_Examen_T$(date +%Y%m%d) .
ls ~/ | grep RTA_Examen_T$(date +%Y%m%d)
cd ..
ls ~/ | grep RTA_Examen_T$(date +%Y%m%d)
ls -l
cd ~
mkdir RTA_Examen_T$(date +%Y%m%d)
ls -l | grep RTA_Examen_T
ls -l
cd ~/UTN-FRA_SO_Examenes/202406/UTNFRA_SO_2do_Parcial_Coro
cp -r ~/RTA_Examen_T20241113 .
git add RTA_Examen_T20241113
git commit -m "Carpeta de respuestas del examen"
git push origin main
git add RTA_Examen_T20241113
git commit -m "Carpeta de respuestas del examen"
git add
git add .
git status
git push origin main
git push origin master
git init
git add .
git commit -m "Carpeta de respuestas del examen"
git branch -M main
git remote add origin https://github.com/noecoro/UTNFRA_SO_2do_Parcial_Coro.git
git push -u origin main
git init
git checkout -b main
git add .
git commit -m "Commit inicial: Añadiendo carpeta de respuestas del examen"
git remote add origin https://github.com/noecoro/UTNFRA_SO_2do_Parcial_Coro.git
git push -u origin main
git remote remove origin
git remote add origin https://github.com/noecoro/UTNFRA_SO_2do_Parcial_Coro.git
git add .
git commit -m "Commit inicial: Añadiendo carpeta de respuestas del examen"
git push -u origin main
git status
ls -l
ls -l RTA_Examen_T20241113
echo "# Comandos para el punto A" > RTA_Examen_T20241113/Punto_A.sh
echo "# Comandos para el punto B" > RTA_Examen_T20241113/Punto_B.sh
git add .
git commit -m "Commit inicial: Añadiendo carpeta de respuestas del examen"
git push -u origin main
ssh-add -l
ssh-add ~/.ssh/id_ed25519
ssh -T git@github.com
git remote set-url origin git@github.com:noecoro/UTNFRA_SO_2do_Parcial_Coro.git
git push -u origin main
echo "# Comandos para el punto C" > RTA_Examen_T20241113/Punto_C.sh
echo "# Comandos para el punto D" > RTA_Examen_T20241113/Punto_D.sh
echo "# Comandos para el punto E" > RTA_Examen_T20241113/Punto_E.sh
ls -l RTA_Examen_T20241113
git add RTA_Examen_T20241113/Punto_C.sh RTA_Examen_T20241113/Punto_D.sh RTA_Examen_T20241113/Punto_E.sh
git commit -m "Añadiendo archivos de respuesta para los puntos C, D y E"
git push
lsblk
sudo pvcreate /dev/sdb
sudo pvcreate /dev/sdc
sudo pvcreate /dev/sdd
sudo vgcreate vf_datos /dev/sdb
sudo vgcreate vg_temp /dev/sdc
sudo lvremove vf_datos
sudo lvremove vg_temp
sudo vgremove vf_datos
sudo vgremove vg_temp
sudo pvremove /dev/sdb
sudo pvremove /dev/sdc
sudo pvremove /dev/sdd
sudo fdisk /dev/sdb
sudo fdisk /dev/sdc
lsblk
sudo fdisk /dev/sdb
sudo fdisk /dev/sdc
lsblk
sudo fdisk /dev/sdc
free -h
lsblk
sudo fdisk /dev/sdb
lsblk
sudo pvcreate /dev/sdb1
sudo pvcreate /dev/sdc1
pvs
pvc
sudo pvs
sudo vgcreate vg_datos /dev/sdb1
sudo vgcreate vg_temp /dev/sdc1
sudo vg
sudo vgs
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -L 512M -n lv_swap vg_temp
sudo vgs
sudo lvcreate -L 1.45G -n lv_workareas vg_datos
sudo lvcreate -L 480M -n lv_swap vg_temp
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_temp/lv_swap
sudo swapon /dev/vg_temp/lv_swap
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mkdir -p /work
sudo mount /dev/vg_datos/lv_workareas /work
free -h
echo '/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/vg_datos/lv_workareas /work ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/vg_temp/lv_swap none swap sw 0 0' | sudo tee -a /etc/fstab
df -h
free -h
lsblk
sudo apt update
sudo apt install apache2
ls -l /var
ls -l /var/wwww
cd wwww
sudo ls -l /var/wwww
sudo ls -l /var/www
history > comandoslvm.txt
free -m
sudo mkdir -p /usr/local/bin/Coro
sudo vim /usr/local/bin/Coro/AltaUser-Groups.sh
sudo chmod +x /usr/local/bin/Coro/AltaUser-Groups.sh
sudo /usr/local/bin/Coro/AltaUser-Groups.sh osboxes /home/osboxes/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
usuario:grupo
sudo vim /usr/local/bin/Coro/AltaUser-Groups.sh
sudo /usr/local/bin/Coro/AltaUser-Groups.sh osboxes /home/osboxes/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cat /home/osboxes/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo vim /usr/local/bin/Coro/AltaUser-Groups.sh
sudo /usr/local/bin/Coro/AltaUser-Groups.sh osboxes /home/osboxes/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo vim /usr/local/bin/Coro/AltaUser-Groups.sh
history > comandosScript.txt
ls -l
cd RTA_Examen_20241112/
ls -l
cd ..
cd RTA_Examen_20241111/
cd RTA_Examen_2024111/
cd RTA_Examen_20241112/
ls -l
vim Punto_A.sh 
vim Punto_B.sh 
docker --version
cd /home/osboxes/UTN-FRA_SO_Examenes/202406/docker
sudo vim index.html
cat index.html 
vim Dockerfile.sh
docker build -t web1-Coro .
cat Dockerfile.sh 
sudo docker build -t web1-Coro .
sudo usermod -aG docker $USER
sudo docker build -t web1-Coro .
sudo docker build -t web1-coro .
ls -l
sudo chmod 644 Dockerfile
mv Dockerfile.sh Dockerfile
ls -l
sudo docker build -t web1-coro .
sudo systemctl restart docker
sudo docker build -t web1-coro .
sudo docker system prune -a --volumes
df -h
sudo docker build -t web1-coro .
sudo docker system prune -a --volumes
df -h
sudo docker build -t web1-coro .
sudo lvextend -L +500M /dev/vg_datos/lv_docker
sudo resize2fs /dev/vg_datos/lv_docker
sudo docker build -t web1-coro .
sudo systemctl stop docker
sudo vim /etc/docker/daemon.json
sudo mkdir -p /docker-data
sudo systemctl start docker
sudo docker build -t web1-coro .
docker login
sudo apt update
sudo apt install firefox
firefox &
docker login
docker push noeliacoro/web1-coro
sudo docker push noeliacoro/web1-coro
docker push noeliacoro/web1-coro
sudo docker push noeliacoro/web1-coro
docker images
sudo docker images
sudo docker tag web1-coro noeliacoro/web1-coro
sudo docker push noeliacoro/web1-coro
docker login
sudo docker tag web1-coro noeliacoro/web1-coro
sudo docker push noeliacoro/web1-coro
docker login /u noeliacoro
docker login -u noeliacoro
sudo docker push noeliacoro/web1-coro
sudo docker tag web1-coro noeliacoro/web1-coro
sudo docker push noeliacoro/web1-coro
docker push noeliacoro/web1-coro
sudo docker login -u noeliacoro
sudo docker push noeliacoro/web1-coro
#!/bin/bash
docker run -d -p 8080:80 noeliacoro/web1-coro
vim run.sh
echo '#!/bin/bash' > run.sh
echo 'docker run -d -p 8080:80 noeliacoro/web1-coro' >> run.sh
chmod +x run.sh
cat run.sh
./run.sh
sudo ./run.sh
sudo usermod -aG docker $USER
history > historial_comandos.txt
groups
sudo groups
docker ps
sudo usermod -aG docker osboxes
groups
sudo usermod -a -G docker $(whoami)
grep docker /etc/group
id
groups
./run.sh
sudo ./run.sh
cd ~/UTN-FRA_SO_Examenes/202406/docker
./run.sh
sudo docker ps
vim index.html
sudo docker build -t noeliacoro/web1-coro .
./run.sh
vim index.html
sudo docker build -t noeliacoro/web1-coro .
./run.sh
sudo docker ps
sudo docker stop <CONTAINER_ID>
./run.sh
sudo docker ps -q --filter "ancestor=noeliacoro/web1-coro" | xargs -r sudo docker stop
sudo docker rmi noeliacoro/web1-coro
sudo docker build -t noeliacoro/web1-coro .
./run.sh
sudo docker stop $(sudo docker ps -q)
sudo docker rm $(sudo docker ps -a -q)
sudo docker rmi -f noeliacoro/web1-coro
sudo docker build -t noeliacoro/web1-coro .
./run.sh
cd ..
ls -l
cd UTNFRA_SO_2do_Parcial_Coro/
ls -l
cd RTA_Examen_T20241113/
ls -l
cd ..
ls -l
cd UTNFRA_SO_2do_Parcial_Coro/
LS -L
ls -l
cd ..
ls -l
cd RTA_Examen_20241112/
LS -L
ls -l
vim Punto_C.sh
cat Punto_C.sh 
cat Punto_A.sh 
cat Punto_B.sh 
cat Punto_C.sh 
cat Punto_D.sh 
mv ~/RTA_Examen_T20241112/Punto_A.sh ~/RTA_Examen_T20241113/
mv ~/RTA_Examen_T20241112/Punto_B.sh ~/RTA_Examen_T20241113/
mv ~/RTA_Examen_T20241112/Punto_C.sh ~/RTA_Examen_T20241113/
cd ..
ls -l
mv ~/RTA_Examen_T20241112/Punto_A.sh ~/RTA_Examen_T20241113/
mv ~/RTA_Examen_T20241112/Punto_B.sh ~/RTA_Examen_T20241113/
mv ~/RTA_Examen_T20241112/Punto_C.sh ~/RTA_Examen_T20241113/
ls ~/RTA_Examen_T20241112
cd RTA_Examen_20241112/
ls -l
cat Punto_A.sh 
cd ..
ls -l
RTA_Examen_20241113/
cd RTA_Examen_T20241113
ls -l
cd ..
UTN-FRA_SO_Examenes/
cd UTN-FRA_SO_Examenes/
ls -l
cd ..
ls -l
cd RTA_Examen_20241112/
ls -l
cat Punto_A.sh 
cat Punto_B.sh 
cat Punto_C.sh 
cat Punto_D.sh 
cd ..
cd RTA_Examen_T20241113
ls -l
cat Punto_A.sh 
echo "# Comandos para el punto B" > ~/RTA_Examen_T20241113/Punto_B.sh
echo "# Comandos para el punto C" > ~/RTA_Examen_T20241113/Punto_C.sh
echo "# Comandos para el punto D" > ~/RTA_Examen_T20241113/Punto_D.sh
echo "# Comandos para el punto E" > ~/RTA_Examen_T20241113/Punto_E.sh
git add .
cd ..
[200~cd ~/UTN-FRA_SO_Examenes/202406
cd ~/UTN-FRA_SO_Examenes/202406
ls -l
cd UTNFRA_SO_2do_Parcial_Coro/
ls -l
cd RTA_Examen_T20241113/
ls -l
vim Punto_A.sh 
vim Punto_B.sh 
vim Punto_C.sh 
git add .
git status
git commit -m "Comadnso de A a C"
git push origin main
cd ..
ls -l
cd ansible/
mkdir -p /tmp/2do_parcial/{alumno,equipo}
tree tmp
tree /tmp/2do_parcial
ls -l
mkdir -p templates
vim templates/datos_alumno.txt.
vim templates/datos_equipo.txt.
hostname -I | awk '{print $1}'
lsb_release -d | awk -F'\t' '{print $2}'
cat /etc/os-release | grep "^PRETTY_NAME" | cut -d= -f2 | tr -d '"'
nproc
vim templates/datos_equipo.txt.
cat templates/datos_equipo.txt. 
vim templates/datos_equipo.txt.
cat templates/datos_equipo.txt. 
sudo visudo
sudo whoami
sudo usermod -aG 2PSupervisores osboxes
sudo whoami
sudo cat /etc/sudoers | grep 2PSupervisores
cd 
cd UTN-FRA_SO_Examenes/
ls -l
cd ..
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd ..
cd RTA_Examen_T20241113/
LS -L
ls -l
vim Punto_D.sh 
gti add .
git add .
cd ..
~/UTN-FRA_SO_Examenes/202406/UTNFRA_SO_2do_Parcial_Coro
cd /UTN-FRA_SO_Examenes/202406/UTNFRA_SO_2do_Parcial_Coro
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd UTNFRA_SO_2do_Parcial_Coro/
ls -l
cd RTA_Examen_T20241113/
ls -l
vim Punto_D.sh 
git add .
git status
git commit -m "ansible"
git push origin main 
history
cp -r ~/UTN-FRA_SO_Examenes/202406 ~/UTN-FRA_SO_Examenes/202406/UTNFRA_SO_2do_Parcial_Coro/
cd ..
cp -r ~/UTN-FRA_SO_Examenes/202406 ~/UTN-FRA_SO_Examenes/202406/UTNFRA_SO_2do_Parcial_Coro/
cp -r ~/UTN-FRA_SO_Examenes/202406 ./202406
history -a
cp ~/.bash_history .
git add .
git commit -m "Archivos de la carpeta 202406, RTA_Examen y .bash_history para el punto E"
git push origin main
cd ~/UTN-FRA_SO_Examenes/202406/UTNFRA_SO_2do_Parcial_Coro
cp -r ~/UTN-FRA_SO_Examenes/202406 ./202406
cp -r ~/UTN-FRA_SO_Examenes/202406/ansible ./202406/
cp -r ~/UTN-FRA_SO_Examenes/202406/docker ./202406/
cp ~/UTN-FRA_SO_Examenes/202406/202406_2doParcial.pdf ./202406/
cp ~/UTN-FRA_SO_Examenes/202406/script_Precondicion.sh ./202406/
cp -r ~/RTA_Examen_T20241113 .
history -a
