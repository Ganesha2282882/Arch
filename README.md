# Arch
A Arch install script
```
pacman -Sy git
fdisk -l
dd if=/dev/zero of=/dev/sdX bs=1M count=16
cfdisk /dev/sdX
mkfs.ext4 /dev/sdX -FFF
mount /dev/sdXX /mnt
git clone https://github.com/Ganesha2282882/Arch.git iarch
cd iarch
chmod +x install.sh
./install.sh
```
Login: arch

Password: arch
