# KO name
obj-m += helloworld.o
obj-m += chardevice.o
obj-m += procfs1_demo.o
obj-m += procfs2_demo.o
obj-m += procfs3_demo.o
obj-m += procfs4_demo.o
obj-m += hello-sysfs_demo.o
# Object source file
helloworld-objs := hello.o
chardevice-objs :=  chardev.o
procfs1_demo-objs :=  procfs1.o
procfs2_demo-objs := procfs2.o
procfs3_demo-objs := procfs3.o
procfs4_demo-objs := procfs4.o
hello-sysfs_demo-objs := hello-sysfs.o
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean