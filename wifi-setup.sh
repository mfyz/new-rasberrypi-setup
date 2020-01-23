# add wifi network config
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf

# add network config like:
# network={
#   ssid="network-name"
#   psk="password"
# }
# save and exit, then;

# to apply the new configuration
wpa_cli -i wlan0 reconfigure

# test if you received new ip address:
ifconfig wlan0

# and ping a domain to verify the internet connectivity
ping mfyz.com
