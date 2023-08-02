# ### Orangefox for Realme GT2 - RMX3311-RMX3312 - Covenant Fuchsia
## Kernel EX01

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
Qualcomm | Snapdragon 888 SM8350
Processor| clock 2.84 GHz
Number of cores | 8
GPU | Adreno 660
Storage	| 128GB / 256GB 
RAM memory	| 8 GB / 12 GB

## Features

Works: based on the latest version of the RUI
ONLY RUI
- [X] ADB
- [X] Decryption
- [X] Display
- [ ] Fasbootd
- [X] Flashing - need more test
- [X] MTP
- [ ] Sideload - need more test
- [X] Permanent installation
- [X] NANO editor
- [ ] USB OTG
- [ ] Vibrator
- [ ] Battery indicator

<img src="https://i.ibb.co/JqtkZ18/Screenshot-2023-07-09-16-56-06.png" alt="Covenant_Fuchsia" title="Covenant_Fuchsia" height="200"> - <img src="https://i.ibb.co/Jy13XVN/Screenshot-2023-07-09-16-56-15.png" alt="Covenant_Fuchsia" title="Covenant_Fuchsia" height="200"> - <img src="https://i.ibb.co/JFCJnD9/Screenshot-2023-07-09-16-56-27.png" alt="Covenant_Fuchsia" title="Covenant_Fuchsia" height="200"> - <img src="https://i.ibb.co/xGkZzHL/Screenshot-2023-07-09-16-56-58.png" alt="Covenant_Fuchsia" title="Covenant_Fuchsia" height="200"> - <img src="https://i.ibb.co/hMQfZRN/Screenshot-2023-07-09-16-57-03.png" alt="Covenant_Fuchsia" title="Covenant_Fuchsia" height="200"> - <img src="https://i.ibb.co/K2vnmPd/Screenshot-2023-07-09-16-57-17.png" alt="Covenant_Fuchsia" title="Covenant_Fuchsia" height="200"> - <img src="https://i.ibb.co/6gbnyGT/Screenshot-2023-07-09-16-57-57.png" alt="Covenant_Fuchsia" title="Covenant_Fuchsia" height="200">

For Install: FOR YOUR RISK!
1. flash the magisk patched boot image & boot your phone
remove all modules & reboot

2. now select the uninstall magisk option inside magisk & again reboot

3. now again follow the same procedure :
adb reboot bootloader
fastboot boot <drag & drop OFox.img>
OFox will boot on your phone
Decrypt internal storage using the phone pattern in ofox
Now select the OFox.img from internal storage
There select the last option - flash to ramdisk
Now OFox will be installed into your Recovery partition
reboot your device

4. To check - adb reboot recovery
Now it should boot to OFox

5. now select - reboot to recovery - OFox should come now - now select reboot to system - 
your phone should & will boot up

6. now - again reboot to OFox - YOU SHOULD NOT HAVE ROOT & ANY MODULES - Flash the magisk.zip file - magisk will flash

7. MAIN PART (else your phone will freeze) - WIPE DALVIK & CACHE as soon as magisk is flashed in OFox 
now again wipe - dalvik & cache only 

8. now reboot to system
VOILA - You've got both MAGISK & ROOT on your device
