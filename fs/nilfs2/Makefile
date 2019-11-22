# SPDX-License-Identifier: GPL-2.0
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

obj-m += nilfs2.o

# obj-$(CONFIG_NILFS2_FS) += nilfs2.o
nilfs2-y := inode.o file.o dir.o super.o namei.o page.o mdt.o \
	btnode.o bmap.o btree.o direct.o dat.o recovery.o \
	the_nilfs.o segbuf.o segment.o cpfile.o sufile.o \
	ifile.o alloc.o gcinode.o ioctl.o sysfs.o

clean:
	rm -rf *ko *mod *.o *-safe
	
# SPDX-License-Identifier: GPL-2.0
#
# Makefile for the linux ext2-filesystem routines.
#

# all:
# 	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
# 
# obj-m += ext2.o
# 
# ext2-y := balloc.o dir.o file.o ialloc.o inode.o \
# 	  ioctl.o namei.o super.o symlink.o
# 
# ext2-$(CONFIG_EXT2_FS_XATTR)	 += xattr.o xattr_user.o xattr_trusted.o
# ext2-$(CONFIG_EXT2_FS_POSIX_ACL) += acl.o
# ext2-$(CONFIG_EXT2_FS_SECURITY)	 += xattr_security.o
# 
# clean:
# 	rm -rf *ko *mod
