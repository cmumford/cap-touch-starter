if(ESP_PLATFORM)

file(GLOB_RECURSE SOURCES lv_demos/*.c)

idf_component_register(SRCS ${SOURCES}
                       INCLUDE_DIRS .
                       REQUIRES lvgl)

else()
    message(FATAL_ERROR "LVGL LV demos: ESP_PLATFORM is not defined. Try reinstalling ESP-IDF.")
endif()
