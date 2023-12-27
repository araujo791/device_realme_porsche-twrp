#!/system/bin/sh
# This script is needed to automatically set device props.

load_RMX3312IN()
{
      echo "Setting up props for RXM3312IN"
      resetprop "ro.build.product" "RMX3312"
      resetprop "ro.product.model" "RMX3312"
      resetprop "ro.product.device" "RE58B2L1"
      resetprop "ro.product.product.device" "RE58B2L1"
      resetprop "ro.commonsoft.ota" "RE58B2L1"
      resetprop "ro.separate.soft" "216B2"
}

load_RMX3311EU()
{
      echo "Setting up props for RMX3311EU"
      resetprop "ro.build.product" "RMX3311"
      resetprop "ro.product.model" "RMX3311"
      resetprop "ro.product.device" "RE58B2L1"
      resetprop "ro.product.product.device" "RE58B2L1"
      resetprop "ro.commonsoft.ota" "RE58B2L1"
      resetprop "ro.separate.soft" "216B3"
}

load_RMX3310CN()
{
      echo "Setting up props for RMX3310CN"
      resetprop "ro.build.product" "RMX3310"
      resetprop "ro.product.model" "RMX3310"
      resetprop "ro.product.device" "RE58B2L1"
      resetprop "ro.product.product.device" "RE58B2L1"
      resetprop "ro.commonsoft.ota" "RE58B2L1"
      resetprop "ro.separate.soft" "216B1"
}

project=$(cat /proc/oplusVersion/prjName)
echo $project

case $project in
     "216B2")
         load_RMX3312IN
              ;;
     "216B3")
          load_RMX3311EU
              ;;
     "216B1")
          load_RMX3310CN
              ;;
           *)
          load_RMX3312IN
              ;;

esac

exit 0
