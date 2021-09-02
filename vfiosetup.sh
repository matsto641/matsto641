!#/bin/bash
cp grub /etc/default/grub
update-grub2
echo vfio >> /etc/modules
echo vfio_iommu_type1 >> /etc/modules
echo vfio_pci >> /etc/modules
echo vfio_virqfd >> /etc/modules
update-initramfs -u
echo 'rebooting in 5 seconds...'
sleep 5
reboot
