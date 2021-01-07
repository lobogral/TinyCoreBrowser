sed -i '1c\http://distro.ibiblio.org/tinycorelinux/' /opt/tcemirror
tce-load -wi tc-install.tcz
sudo tc-install.sh /mnt/sr0/boot/core.gz frugal sda 0 ext4 no no X none
