#!/bin/sh
fdisk /dev/sda <<EOF
d
1
d
2
d
3
d
4
n
p
1

+1G
n
p
2

+1G
n
p
3


t
1
b
w
EOF
echo "Finished fdisk, now formatting partitions..."
umount /serval
umount /serval-var
umount /dos
mkfs.ext4 /dev/sda2
mkfs.ext4 /dev/sda3
ls -l /dev
mkdir /serval
mkdir /serval-var
mkdir /dos
ls -l /
