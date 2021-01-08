sed -i '1c\http://distro.ibiblio.org/tinycorelinux/' /opt/tcemirror

echo -e "n\np\n1\n\n\na\n1\nw" | sudo fdisk /dev/sda

mkfs.ext4 /dev/sda1
sudo rebuildfstab

mount /mnt/sda1
mount /mnt/sr0

sudo mkdir -p /mnt/sda1/tce/boot
sudo cp /mnt/sr0/boot/core.gz /mnt/sda1/tce/boot
sudo cp /mnt/sr0/boot/vmlinuz /mnt/sda1/tce/boot

tce-load -wi syslinux.tcz
sudo mkdir /mnt/sda1/tce/boot/extlinux
sudo extlinux -i /mnt/sda1/tce/boot/extlinux

dd if=/usr/local/share/syslinux/mbr.bin of=/dev/sda

DATAUUID=$(blkid -s UUID /dev/sda1 | awk '{print $2}')
touch extlinux.conf
echo "DEFAULT core" >> extlinux.conf
echo "LABEL core" >> extlinux.conf
echo "KERNEL /tce/boot/vmlinuz" >> extlinux.conf
echo "INITRD /tce/boot/core.gz" >> extlinux.conf
echo "APPEND quiet waitusb=5:${DATAUUID} tce=${DATAUUID}" >> extlinux.conf
sudo mv extlinux.conf /mnt/sda1/tce/boot/extlinux

sudo umount /mnt/sr0
eject /dev/sr0
sudo reboot
