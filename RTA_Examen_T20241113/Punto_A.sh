#!/bin/bash

# Configuración de particiones
sudo fdisk /dev/sdb <<EOF
n
p


+1500M
t
8e
w
EOF

sudo fdisk /dev/sdc <<EOF
n
p


+512M
t
82
w
EOF

# Creacion de volumenes fisicos, grupos de volumenes y vol logicos
sudo pvcreate /dev/sdb1 /dev/sdc1
sudo vgcreate vg_datos /dev/sdb1
sudo vgcreate vg_temp /dev/sdc1
sudo lvcreate -L 1.45G -n lv_workareas vg_datos
sudo lvcreate -L 480M -n lv_swap vg_temp

# Formateo y configuracion de sistemas de archivos
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_temp/lv_swap

# Extend el volumen logico de swap
sudo swapoff /dev/vg_temp/lv_swap  # Desactivar el swap actual
sudo lvextend -l +100%FREE /dev/vg_temp/lv_swap  # Usar todo el espacio libre del grupo
sudo mkswap /dev/vg_temp/lv_swap  # Reconfigurar el área de swap
sudo swapon /dev/vg_temp/lv_swap  # Activar nuevamente el swap

# Montaje y configuración del sistema
sudo mkdir -p /work
sudo mount /dev/vg_datos/lv_workareas /work

# Actualización del archivo fstab
echo '/dev/vg_datos/lv_workareas /work ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/vg_temp/lv_swap none swap sw 0 0' | sudo tee -a /etc/fstab

# Comprobaciones
free -h
lsblk
df -h

