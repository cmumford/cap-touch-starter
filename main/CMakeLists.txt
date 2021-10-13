file( GLOB SOURCES *.cc )

idf_component_register(
  SRCS
    ${SOURCES}
  INCLUDE_DIRS
    "${CMAKE_SOURCE_DIR}/components"
    "${CMAKE_SOURCE_DIR}/components/lvgl/src"
    "${CMAKE_SOURCE_DIR}/components/lv_demos"
    "${CMAKE_SOURCE_DIR}/main"
    "${IDF_PATH}/components"
    "${IDF_PATH}/components/freertos/include/freertos"
  REQUIRES
    lvgl_esp32_drivers
    lv_demos
  )
