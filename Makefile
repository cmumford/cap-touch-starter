
PROJECT_NAME := CapTouchStarter

include $(IDF_PATH)/make/project.mk

EXTRA_COMPONENT_DIRS := components/lvgl_esp32_drivers

SPIFFS_IMAGE_FLASH_IN_PROJECT := 1
$(eval $(call spiffs_create_partition_image,storage,fs))
