# Zedboard

# Useful petalinux commands
## Setup project
* petalinux-create --type project --template zynq --name zedboard
* cd zedboard
* petalinux-config  --get-hw-description=<path-to-vivado>/zps.sdk

## Build project
* petalinux-build
* petalinux-package --image -c kernel --format uImage 
* petalinux-package --boot --fsbl images/linux/zynq_fsbl.elf --fpga images/linux/zps_wrapper.bit --u-boot --output images/linux/BOOT.BIN --force

## Configuration
* petalinux-config -c rootfs
* petalinux-config -c kernel

## Clean project
* petalinux-build -x distclean
