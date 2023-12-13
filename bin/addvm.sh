#!/usr/bin/env bash
#
## Created By: Jake@Linux
# Created On: Tue 31 Jan 2023 09:35:22 AM CST
# # Project: virtual machine creation script, used with vmach.sh script or as stand alone installer

read -rep $'What distro?\n: ' distro
read -rep $'How many CPUs?\n: ' cpu
read -rep $'How much Mem?\n: ' mem
read -rep $'Name of iso?\n: ' iso
read -rep $'Disk size?\n: ' gb
read -rep $'Type of OS?\n: ' os
read -rep $'Bios or UEFI?\n: ' boot




read -r -p "Press Enter to continue" </dev/tty

virt-install --name="$distro" --vcpus="$cpu" --memory="$mem" --cdrom="/home/mennnk/Desktop/iso/$iso" --disk size="$gb" --os-variant="$os" --boot "$boot" &


