PRODUCT_NAME := full_samstechdevice
PRODUCT_DEVICE := samscruise
PRODUCT_BRAND := Android
PRODUCT_MODEL := Sams Club Device (Cruise)
PRODUCT_LOCALES := en_US

# default is nosdcard, S/W button enabled in resource
DEVICE_PACKAGE_OVERLAYS := device/samsclub/samscruise/goi_overlays
PRODUCT_CHARACTERISTICS := nosdcard

config_toastDefaultGravity=top|center_horizontal

include device/samsclub/samscruise/samscruise.mk 
OUT_DIR := out_samscuise
