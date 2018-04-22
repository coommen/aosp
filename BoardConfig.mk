# Just use the generic x86_64 board used by the emulator for now
# this board should really point to the device specific board
# for SEUIC Cruise, provided by the device manufacturer

# the x86_64 Board doesn't seem to start in the emulator
#include $(SRC_TARGET_DIR)/board/generic_x86_64/BoardConfig.mk

# Apparently the boards from the SRC_TARGET_DIR don't seem to work
# SRC_TARGET_DIR = /aosp/nougat/build/target
#include $(SRC_TARGET_DIR)/board/generic_x86/BoardConfig.mk

# Use the board from "Device" folder in AOSP
# commenting this for now...for some reason Emulator didn't start
# although the content below is from this file
# include device/generic/x86/BoardConfig.mk


#
# Product-specific compile-time definitions.
#

# The generic product target doesn't have any hardware-specific pieces.
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true

TARGET_ARCH := x86
TARGET_CPU_ABI := x86

SMALLER_FONT_FOOTPRINT := true
MINIMAL_FONT_FOOTPRINT := true
# Some framework code requires this to enable BT
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/generic/common/bluetooth

# Build OpenGLES emulation libraries
BUILD_EMULATOR_OPENGL := true
BUILD_EMULATOR_OPENGL_DRIVER := true
USE_OPENGL_RENDERER := true

BOARD_USE_LEGACY_UI := true

# share the same one across all mini-emulators
BOARD_EGL_CFG := device/generic/goldfish-opengl/system/egl/egl.cfg

# PDK does not use ext4 image, but it is added here to prevent build break.
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 576716800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 419430400
BOARD_CACHEIMAGE_PARTITION_SIZE := 69206016
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

BOARD_SEPOLICY_DIRS += build/target/board/generic/sepolicy
BOARD_SEPOLICY_DIRS += build/target/board/generic_x86/sepolicy

# in case you need to increase the System Partition. It is set to 2GB below
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648

