#define LOG_LOCAL_LEVEL ESP_LOG_VERBOSE
#include <esp_log.h>
#include <esp_system.h>
#include <freertos/include/freertos/FreeRTOS.h>
#include <freertos/include/freertos/task.h>
#include <sdkconfig.h>
#include <spi_flash/include/esp_spi_flash.h>

namespace {

constexpr char TAG[] = "App";

void LogHardwareInfo() {
  esp_chip_info_t chip_info;
  esp_chip_info(&chip_info);
  ESP_LOGI(TAG, "This is %s chip with %d CPU core(s), WiFi%s%s.",
           CONFIG_IDF_TARGET, chip_info.cores,
           (chip_info.features & CHIP_FEATURE_BT) ? "/BT" : "",
           (chip_info.features & CHIP_FEATURE_BLE) ? "/BLE" : "");

  ESP_LOGI(TAG, "Silicon revision %u.", chip_info.revision);

  ESP_LOGI(
      TAG, "%zu MB %s flash", spi_flash_get_chip_size() / (1024 * 1024),
      (chip_info.features & CHIP_FEATURE_EMB_FLASH) ? "embedded" : "external");

  ESP_LOGI(TAG, "Free heap size: %u bytes.", esp_get_free_heap_size());
  ESP_LOGI(TAG, "Free internal heap size: %u bytes.",
           esp_get_free_internal_heap_size());
  ESP_LOGI(TAG, "Minimum free heap size: %u bytes.",
           esp_get_minimum_free_heap_size());

  ESP_LOGI(TAG, "MALLOC_CAP_EXEC: %u bytes.",
           heap_caps_get_total_size(MALLOC_CAP_EXEC));
  ESP_LOGI(TAG, "MALLOC_CAP_32BIT: %u bytes.",
           heap_caps_get_total_size(MALLOC_CAP_32BIT));
  ESP_LOGI(TAG, "MALLOC_CAP_8BIT: %u bytes.",
           heap_caps_get_total_size(MALLOC_CAP_8BIT));
  ESP_LOGI(TAG, "MALLOC_CAP_8BIT: %u bytes.",
           heap_caps_get_total_size(MALLOC_CAP_8BIT));
  ESP_LOGI(TAG, "MALLOC_CAP_DMA: %u bytes.",
           heap_caps_get_total_size(MALLOC_CAP_DMA));
  ESP_LOGI(TAG, "MALLOC_CAP_PID2: %u bytes.",
           heap_caps_get_total_size(MALLOC_CAP_PID2));
  ESP_LOGI(TAG, "MALLOC_CAP_PID3: %u bytes.",
           heap_caps_get_total_size(MALLOC_CAP_PID3));
  ESP_LOGI(TAG, "MALLOC_CAP_PID4: %u bytes.",
           heap_caps_get_total_size(MALLOC_CAP_PID4));
  ESP_LOGI(TAG, "MALLOC_CAP_PID5: %u bytes.",
           heap_caps_get_total_size(MALLOC_CAP_PID5));
  ESP_LOGI(TAG, "MALLOC_CAP_PID6: %u bytes.",
           heap_caps_get_total_size(MALLOC_CAP_PID6));
  ESP_LOGI(TAG, "MALLOC_CAP_PID7: %u bytes.",
           heap_caps_get_total_size(MALLOC_CAP_PID7));
  ESP_LOGI(TAG, "MALLOC_CAP_SPIRAM: %u bytes.",
           heap_caps_get_total_size(MALLOC_CAP_SPIRAM));
  ESP_LOGI(TAG, "MALLOC_CAP_INTERNAL: %u bytes.",
           heap_caps_get_total_size(MALLOC_CAP_INTERNAL));
  ESP_LOGI(TAG, "MALLOC_CAP_DEFAULT: %u bytes.",
           heap_caps_get_total_size(MALLOC_CAP_DEFAULT));
  ESP_LOGI(TAG, "MALLOC_CAP_IRAM_8BIT: %u bytes.",
           heap_caps_get_total_size(MALLOC_CAP_IRAM_8BIT));
}

}  // namespace

extern "C" void app_main() {
  ESP_LOGI(TAG, "CapTouchProto app!");
  LogHardwareInfo();
}
