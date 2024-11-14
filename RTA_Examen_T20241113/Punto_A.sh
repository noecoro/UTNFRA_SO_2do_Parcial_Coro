# Comandos para el punto A
# 1. Configuración de particiones
sudo fdisk /dev/sdb
# Comandos en fdisk para /dev/sdb:
#   n   (nueva partición)
#   +1500MB (tamaño de la partición)
#   p   (partición primaria)
#   t   (cambiar tipo de partición a LVM)
#   8e  (código de LVM)
#   w   (guardar cambios y salir)

sudo fdisk /dev/sdc
# Comandos en fdisk para /dev/sdc:
#   n   (nueva partición)
#   +512MB (tamaño de la partición)
#   p   (partición primaria)
#   t   (cambiar tipo de partición a SWAP)
#   82  (código de SWAP)
#   w   (guardar cambios y salir)

# 2. Verificar particiones y memoria
free -h
lsblk

# 3. Crear volúmenes fisicos (PV) para LVM
sudo pvcreate /dev/sdb1
sudo pvcreate /dev/sdc1
sudo pvs

# 4. Crear grupos de volúmenes (VG)
sudo vgcreate vg_datos /dev/sdb1
sudo vgcreate vg_temp /dev/sdc1
sudo vgs

# 5. Crear volúmenes logicos (LV) en cada grupo
sudo lvcreate -L 1.45G -n lv_workareas vg_datos
sudo lvcreate -L 480M -n lv_swap vg_temp

# 6. Formatear los volumenes lógicos
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_temp/lv_swap

# 7. Activar el area de intercambio (swap)
sudo swapon /dev/vg_temp/lv_swap

# 8. Montar volúmenes en directorios específicos
sudo mkdir -p /var/lib/docker
sudo mount /dev/vg_datos/lv_docker /var/lib/docker

sudo mkdir -p /work
sudo mount /dev/vg_datos/lv_workareas /work

# 9. Verificar memoria swap y espacio en disco
free -h
df -h

# 10. Añadir montajes permanentes en /etc/fstab para que se mantengan después de reiniciar
echo '/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/vg_datos/lv_workareas /work ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/vg_temp/lv_swap none swap sw 0 0' | sudo tee -a /etc/fstab

