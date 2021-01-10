####################################################################################
### Instalacion
####################################################################################

# Repositorio de extensiones actuales
sed -i '1c\http://distro.ibiblio.org/tinycorelinux/' /opt/tcemirror

# Particionando /dev/sda
echo -e "n\np\n1\n\n\na\n1\nw" | sudo fdisk /dev/sda

# Formateando /dev/sda1
mkfs.ext4 /dev/sda1
sudo rebuildfstab

# Montar disco de instalacion (sr0) y sda1
mount /mnt/sda1
mount /mnt/sr0

# Copiar archivos del sistema operativo desde sr0 a sda1
sudo mkdir -p /mnt/sda1/tce/boot
sudo cp /mnt/sr0/boot/core.gz /mnt/sda1/tce/boot
sudo cp /mnt/sr0/boot/vmlinuz /mnt/sda1/tce/boot

# Uso de extlinux para crear archivos de arranque en sda1
tce-load -wi syslinux.tcz
sudo mkdir /mnt/sda1/tce/boot/extlinux
sudo extlinux -i /mnt/sda1/tce/boot/extlinux

# Creacion de mbr en sda
dd if=/usr/local/share/syslinux/mbr.bin of=/dev/sda

# Creacion de archivo de arranque .conf en sda1
DATAUUID=$(blkid -s UUID /dev/sda1 | awk '{print $2}')
touch extlinux.conf
echo "DEFAULT core" >> extlinux.conf
echo "LABEL core" >> extlinux.conf
echo "KERNEL /tce/boot/vmlinuz" >> extlinux.conf
echo "INITRD /tce/boot/core.gz" >> extlinux.conf
echo "APPEND quiet waitusb=5:${DATAUUID} tce=${DATAUUID}" >> extlinux.conf
sudo mv extlinux.conf /mnt/sda1/tce/boot/extlinux

# Desmontar y expulsar sr0
sudo umount /mnt/sr0
eject /dev/sr0

# Reiniciar
sudo reboot