sudo dphys-swapfile swapoff

# As root, edit the file /etc/dphys-swapfile and modify the variable CONF_SWAPSIZE=1024
dphys-swapfile setup

sudo dphys-swapfile swapon
