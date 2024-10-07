#dividir el disco

sudo fdisk /dev/sdd
lsblk

#formatear las particiones

sudo mkfs.ext4 /dev/sdd1
sudo mkfs.ext4 /dev/sdd2
sudo mkfs.ext4 /dev/sdd3
sudo mkfs.ext4 /dev/sdd4

#montar en /mnt/

ll /mnt/
sudo mkdir /mnt/sdd1
sudo mount /dev/sdd1 /mnt/sdd1
ll /mnt/
sudo mkdir /mnt/sdd2
sudo mount /dev/sdd2 /mnt/sdd2
sudo mkdir /mnt/sdd3
sudo mount /dev/sdd3 /mnt/sdd3
sudo mkdir /mnt/sdd4
sudo mount /dev/sdd4 /mnt/sdd4
ll /mnt/
