# This is a build configuration for a full-featured build of the
# Open-Source part of the tree. It's geared toward a US-centric
# build of the emulator, but all those aspects can be overridden
# in inherited configurations.

# Inheriting from aosp_base.mk would define most of the needed base configurations
# aosp_base.mk has the following inheritance tree:
#     +--> ful_base.mk
#     +--> generic_no_telephony.mk
#     +--> core.mk
#     +--> core_base.mk
#     +--> core_minimal.mk
#     +--> base.mk
#     +--> embedded.mk

# Didn't load in Emulator
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

#using this instead
$(call inherit-product, device/generic/armv7-a-neon/mini_common.mk)


# REQUIRED - creates the emulator tools for the build
# must be included in the product make file in order to get it created for this product
include $(SRC_TARGET_DIR)/product/emulator.mk

##############################################################################
# This is the custom section for the Sams Club Device
# The previous section is a full copy of the build/target/product/full_base.mk
##############################################################################

PRODUCT_NAME := samsdroid_cruise
PRODUCT_DEVICE := seuic_cruise
PRODUCT_BRAND := Android
PRODUCT_MODEL := Sams Club Device (Cruise)
PRODUCT_LOCALES := en_US

# default is nosdcard, S/W button enabled in resource
DEVICE_PACKAGE_OVERLAYS := device/samsclub/seuic_cruise/goi_overlays
PRODUCT_CHARACTERISTICS := nosdcard

# when the devicename and product names don't match you need to 
# explicitly inlcude the device make file
include device/samsclub/seuic_cruise/seuic_cruise.mk 
OUT_DIR := out_samsdroid_cruise

