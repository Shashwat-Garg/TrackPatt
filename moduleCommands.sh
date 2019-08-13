sudo rm /dev/lockScreen
make clean
sudo dmesg -C
make all
sudo insmod gesture.ko
sudo mknod /dev/lockScreen c 246 0
sudo dmesg
# sudo rmmod gesture.ko