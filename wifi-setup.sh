# add wifi network config
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf

# add network config like:
# network={
#   ssid="network-name"
#   psk="password"
# }
# save and exit, then;

# to test the configuration
wpa_cli -i wlan0 reconfigure
