### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=Universal Exynos 9611 AOSP kernel
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=a51
device.name2=f41
device.name3=m31s
device.name4=m31
device.name5=m21
device.name6=gta4xl
device.name7=gta4xlwifi
device.name8=m21s
supported.versions=13 - 16
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties


### AnyKernel install
## boot files attributes
boot_attributes() {
set_perm_recursive 0 0 755 644 $RAMDISK/*;
set_perm_recursive 0 0 750 750 $RAMDISK/init* $RAMDISK/sbin;
} # end attributes

# boot shell variables
block=/dev/block/platform/13520000.ufs/by-name/boot;
dtboblock=/dev/block/platform/13520000.ufs/by-name/dtbo;
is_slot_device=0;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

# boot install
dump_boot;
ui_print "- Installing kernel";
write_boot;
## end boot install
ui_print "Installation Done"
