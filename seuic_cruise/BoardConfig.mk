# Just use the generic x86_64 board used by the emulator for now
# this board should really point to the device specific board
# for SEUIC Cruise, provided by the device manufacturer

# the x86_64 Board doesn't seem to start in the emulator
#include $(SRC_TARGET_DIR)/board/generic_x86_64/BoardConfig.mk

# Apparently the boards from the SRC_TARGET_DIR don't seem to work
# SRC_TARGET_DIR = /aosp/nougat/build/target
#include $(SRC_TARGET_DIR)/board/generic_x86/BoardConfig.mk

#Use the board from "Device" folder in AOSP
include device/generic/x86/BoardConfig.mk

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 419430400
BOARD_CACHEIMAGE_PARTITION_SIZE := 69206016
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

