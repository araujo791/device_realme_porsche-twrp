#!/system/bin/sh

# Add the necessary files and directories
# mkdir -p /sys/devices/platform/soc/soc:qcom,pmic_glink/soc:qcom,pmic_glink:qcom,battery_charger
# mkdir -p /sys/devices/platform/soc/soc:qcom,pmic_glink/soc:qcom,pmic_glink:qcom,battery_charger/power_supply/usb
# mkdir -p /sys/devices/platform/soc/soc:qcom,pmic_glink/soc:qcom,pmic_glink:qcom,battery_charger/power_supply/wireless

# Set SELinux to permissive
setenforce 0

# Capture logs while booting to /sdcard/boot.txt
dmesg > /sdcard/boot.txt
