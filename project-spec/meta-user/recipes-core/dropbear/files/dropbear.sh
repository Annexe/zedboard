#!/usr/bin/env sh

## declare an array variable for posible sd partitions
declare -a sdDirectories=(
  "/run/media/mmcblk1p1"
  "/run/media/mmcblk0p1"
  "/run/media/mmcblk1"
  "/run/media/mmcblk0"
)

## now loop through the above array
for dir in "${sdDirectories[@]}"
do
        if [ -d $dir ]
        then
                echo "dropbear key position is $dir/dropbear/"
                DROPBEAR_RSAKEY="$dir/dropbear/dropbear_rsa_host_key"
                if [ ! -d "$dir/dropbear/" ]
                then
                        mkdir -p "$dir/dropbear/"
                fi
        break
        fi
done
