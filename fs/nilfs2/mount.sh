#!/bin/bash
sudo insmod nilfs2.ko
dd if=/dev/zero of=test.img bs=1M count=200
rm -rf $1
mkdir $1
mkfs -t nilfs2 test.img
sudo mount test.img $1 
