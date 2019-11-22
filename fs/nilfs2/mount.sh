#!/bin/bash
dd if=/dev/zero of=test.img bs=1M count=100
rm -rf testmnt
mkdir testmnt
mkfs -t nilfs2 test.img
sudo mount test.img testmnt/
