#!/bin/bash
# Copy and pastes
# Sudoers:
# %sudo	ALL=(ALL) ALL
# Change password:
# echo "user:pass" | chpasswd
pacstrap /mnt base linux
genfstab /mnt > /mnt/etc/fstab
arch-chroot /mnt /bin/bash -c "yes "" | pacman -S nano sudo networkmanager grub gnome xorg-xinit pulseaudo gdm; echo '%sudo	ALL=(ALL) ALL' > /etc/sudoers; useradd arch; groupadd sudo; usermod -aG sudo arch; mkdir -p /home/arch; chown arch:arch /home/arch --recursive; echo 'arch:arch' | chpasswd; mkdir -p /boot/grub; grub-mkconfig -o /boot/grub/grub.cfg; systemctl enable NetworkManager"
yes "" | pacman -Sy grub
grub-install /disk --root-directory=/mnt
echo "done! time to reboot!"
