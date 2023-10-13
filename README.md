# ### Orangefox for Realme GT2 - RMX3311-RMX3312 - Covenant Fuchsia

## special thanks to the friends who helped solve the battery and otg problems
 - @cykeek
 - @think_thought
 - @Prajwal_Beast_00
 - @yograjfire18
 - @kushagrasinghbisen
 - @JaiShreeRam_Uxtrom
 - @Thalaiva698
 - @Zeus7734

## Kernel
13.1.0.1413(EX01)

## Magisk
26.3

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
- [X] Fasbootd
- [X] Flashing
- [X] MTP
- [X] Sideload
- [X] Permanent installation
- [X] NANO editor
- [X] USB OTG 
- [ ] Vibrator - Ignored
- [X] Battery indicator

<img src="https://i.ibb.co/vQ1KFnF/Screenshot-2023-10-07-02-13-07.png" alt="Covenant_Fuchsia" title="Covenant_Fuchsia" height="200"> - <img src="https://i.ibb.co/7n76r7m/Screenshot-2023-10-07-02-13-47.png" alt="Covenant_Fuchsia" title="Covenant_Fuchsia" height="200"> - <img src="https://i.ibb.co/cC0xMFt/Screenshot-2023-10-07-02-13-55.png" alt="Covenant_Fuchsia" title="Covenant_Fuchsia" height="200"> - <img src="https://i.ibb.co/Mk0F0F1/Screenshot-2023-10-07-02-14-04.png" alt="Covenant_Fuchsia" title="Covenant_Fuchsia" height="200"> - <img src="https://i.ibb.co/rG5MyxG/Screenshot-2023-10-07-02-14-24.png" alt="Covenant_Fuchsia" title="Covenant_Fuchsia" height="200"> - <img src="https://i.ibb.co/yQPwWch/Screenshot-2023-10-07-02-15-22.png" alt="Covenant_Fuchsia" title="Covenant_Fuchsia" height="200"> - <img src="https://i.ibb.co/rvswmTD/Screenshot-2023-10-07-02-15-39.png" alt="Covenant_Fuchsia" title="Covenant_Fuchsia" height="200">

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
