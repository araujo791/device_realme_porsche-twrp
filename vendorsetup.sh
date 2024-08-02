# Reserved for OrangeFox Building Vars
  
#!/usr/bin/env bash

FDEVICE="porsche"
#set -o xtrace

fox_get_target_device() {
   local chkdev=$(echo "$BASH_SOURCE" | grep -w "$FDEVICE")
   if [ -n "$chkdev" ]; then
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w $FDEVICE)
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
fox_get_target_device() {
   local chkdev=$(echo "$BASH_SOURCE" | grep -w $FDEVICE)
   if [ -n "$chkdev" ]; then
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w $FDEVICE)
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}

fox_get_target_device
fi
RE58B2L1

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then

# Initial Info
    export ALLOW_MISSING_DEPENDENCIES=true
    export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
    export LC_ALL="C"
  
# Maintaining Info
    export OF_MAINTAINER="Covenant Fuchsia"
    export FOX_VERSION=$(date +%Y.%m.%d)
    export FOX_BUILD_TYPE=Unofficial_Covenant_Fuchsia

  	
# Device Info
    export FOX_ARCH=arm64
    export FOX_VARIANT="12.1"
    export TARGET_DEVICE_ALT="RE58B2L1,RMX3311,RMX3312"

# Magisk
    export FOX_USE_SPECIFIC_MAGISK_ZIP=~/Magisk/Magisk_v26_3.zip
  
# Funtions
    export FOX_REPLACE_BUSYBOX_PS=1
    export FOX_REPLACE_TOOLBOX_GETPROP=1
    export FOX_USE_TAR_BINARY=1
    export FOX_USE_SED_BINARY=1
    export FOX_USE_BASH_SHELL=1
    export FOX_ASH_IS_BASH=1
    export FOX_USE_GREP_BINARY=1
    export FOX_USE_XZ_UTILS=1
    export FOX_USE_NANO_EDITOR=1
    export OF_ENABLE_LPTOOLS=1
    export FOX_DELETE_AROMAFM=1
    export OF_DISABLE_KEYMASTER2=1
    export FOX_ENABLE_APP_MANAGER=1 
    
# Display Settings
    export OF_HIDE_NOTCH=1
    export OF_CLOCK_POS=1
    export OF_ALLOW_DISABLE_NAVBAR=0
    export OF_USE_GREEN_LED=0
    export OF_SCREEN_H=2400
    export OF_STATUS_INDENT_LEFT=48
    export OF_STATUS_INDENT_RIGHT=48
    
# A/B-Related
    export OF_AB_DEVICE_WITH_RECOVERY_PARTITION=1
    #export OF_VIRTUAL_AB_DEVICE=1
    export FOX_VIRTUAL_AB_DEVICE=1
    export FOX_VANILLA_BUILD=1
  
# Other Patches
    export OF_NO_RELOAD_AFTER_DECRYPTION=1
    export OF_FBE_METADATA_MOUNT_IGNORE=1
    export OF_PATCH_AVB20=1
    export OF_NO_SPLASH_CHANGE=1
    export OF_FIX_DECRYPTION_ON_DATA_MEDIA=1
    export FOX_BUGGED_AOSP_ARB_WORKAROUND="1616300800"; # Sun 21 Mar 04:26:40 GMT 2021

	# let's see what are our build VARs
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
		export | grep "FOX" >> $FOX_BUILD_LOG_FILE
		export | grep "OF_" >> $FOX_BUILD_LOG_FILE
		export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
		export | grep "TW_" >> $FOX_BUILD_LOG_FILE
	fi
fi
#
