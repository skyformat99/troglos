.EXPORT_ALL_VARIABLES:

CROSS_COMPILE := powerpc-unknown-linux-gnu-
QEMU_MACH     := ppce500
QEMU_NIC      := rtl8139
QEMU_EXTRA    := -device virtio-scsi-pci
QEMU_DTB      :=
