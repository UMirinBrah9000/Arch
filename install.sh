#!/bin/bash
timedatectl set-ntp true
ln -sf /usr/share/zoneinfo/Asia/Kuwait
hwclock --systohc
sed -i '178s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf

echo "chad" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 chad.localdomain chad" >> /etc/hosts

