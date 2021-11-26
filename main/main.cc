#define LOG_LOCAL_LEVEL ESP_LOG_VERBOSE
#include <driver/include/driver/gpio.h>
#include <esp_log.h>
#include <esp_system.h>
#include <freertos/include/freertos/FreeRTOS.h>
#include <freertos/include/freertos/semphr.h>
#include <freertos/include/freertos/task.h>
#include <sdkconfig.h>
#include <spi_flash/include/esp_spi_flash.h>

#ifdef LV_LVGL_H_INCLUDE_SIMPLE
#include <lvgl.h>
#else
#include <lvgl/lvgl.h>
#endif  // LV_LVGL_H_INCLUDE_SIMPLE

#include <lvgl_helpers.h>

#ifndef CONFIG_LV_TFT_DISPLAY_MONOCHROME
#if defined CONFIG_LV_USE_DEMO_WIDGETS
#include <lv_demos/src/lv_demo_widgets/lv_demo_widgets.h>
#elif defined CONFIG_LV_USE_DEMO_KEYPAD_AND_ENCODER
#include <lv_demos/src/lv_demo_keypad_encoder/lv_demo_keypad_encoder.h>
#elif defined CONFIG_LV_USE_DEMO_BENCHMARK
#include <lv_demos/src/lv_demo_benchmark/lv_demo_benchmark.h>
#elif defined CONFIG_LV_USE_DEMO_STRESS
#include <lv_demos/src/lv_demo_stress/lv_demo_stress.h>
#else
#error "No demo application selected."
#endif
#endif

namespace {

constexpr char TAG[] = "App";
constexpr uint32_t LV_TICK_PERIOD_MS = 1;
SemaphoreHandle_t xGuiSemaphore;

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

void lv_tick_task(void* arg) {
  (void)arg;

  lv_tick_inc(LV_TICK_PERIOD_MS);
}

void create_demo_application() {
  /* When using a monochrome display we only show "Hello World" centered on the
   * screen */
#if defined CONFIG_LV_TFT_DISPLAY_MONOCHROME || \
    defined CONFIG_LV_TFT_DISPLAY_CONTROLLER_ST7735S

  /* use a pretty small demo for monochrome displays */
  /* Get the current screen  */
  lv_obj_t* scr = lv_disp_get_scr_act(nullptr);

  /*Create a Label on the currently active screen*/
  lv_obj_t* label1 = lv_label_create(scr, nullptr);

  /*Modify the Label's text*/
  lv_label_set_text(label1, "Hello\nworld");

  /* Align the Label to the center
   * nullptr means align on parent (which is the screen now)
   * 0, 0 at the end means an x, y offset after alignment*/
  lv_obj_align(label1, nullptr, LV_ALIGN_CENTER, 0, 0);
#else
  /* Otherwise we show the selected demo */

#if defined CONFIG_LV_USE_DEMO_WIDGETS
  lv_demo_widgets();
#elif defined CONFIG_LV_USE_DEMO_KEYPAD_AND_ENCODER
  lv_demo_keypad_encoder();
#elif defined CONFIG_LV_USE_DEMO_BENCHMARK
  lv_demo_benchmark();
#elif defined CONFIG_LV_USE_DEMO_STRESS
  lv_demo_stress();
#else
#error "No demo application selected."
#endif
#endif
}

void guiTask(void* pvParameter) {
  (void)pvParameter;
  xGuiSemaphore = xSemaphoreCreateMutex();

  lv_init();

  /* Initialize SPI or I2C bus used by the drivers */
  lvgl_driver_init();

  lv_color_t* buf1 = static_cast<lv_color_t*>(
      heap_caps_malloc(DISP_BUF_SIZE * sizeof(lv_color_t), MALLOC_CAP_DMA));
  assert(buf1 != nullptr);

  /* Use double buffered when not working with monochrome displays */
#ifndef CONFIG_LV_TFT_DISPLAY_MONOCHROME
  lv_color_t* buf2 = static_cast<lv_color_t*>(
      heap_caps_malloc(DISP_BUF_SIZE * sizeof(lv_color_t), MALLOC_CAP_DMA));
  assert(buf2 != nullptr);
#else
  static lv_color_t* buf2 = nullptr;
#endif

  static lv_disp_draw_buf_t disp_buf;

  uint32_t size_in_px = DISP_BUF_SIZE;

#if defined CONFIG_LV_TFT_DISPLAY_CONTROLLER_IL3820 ||   \
    defined CONFIG_LV_TFT_DISPLAY_CONTROLLER_JD79653A || \
    defined CONFIG_LV_TFT_DISPLAY_CONTROLLER_UC8151D ||  \
    defined CONFIG_LV_TFT_DISPLAY_CONTROLLER_SSD1306

  /* Actual size in pixels, not bytes. */
  size_in_px *= 8;
#endif

  /* Initialize the working buffer depending on the selected display.
   * NOTE: buf2 == nullptr when using monochrome displays. */
  lv_disp_draw_buf_init(&disp_buf, buf1, buf2, size_in_px);

  lv_disp_drv_t disp_drv;
  lv_disp_drv_init(&disp_drv);
  disp_drv.flush_cb = disp_driver_flush;

  /* When using a monochrome display we need to register the callbacks:
   * - rounder_cb
   * - set_px_cb */
#ifdef CONFIG_LV_TFT_DISPLAY_MONOCHROME
  disp_drv.rounder_cb = disp_driver_rounder;
  disp_drv.set_px_cb = disp_driver_set_px;
#endif

  disp_drv.draw_buf = &disp_buf;
  lv_disp_drv_register(&disp_drv);

  /* Register an input device when enabled on the menuconfig */
#if CONFIG_LV_TOUCH_CONTROLLER != TOUCH_CONTROLLER_NONE
  lv_indev_drv_t indev_drv;
  lv_indev_drv_init(&indev_drv);
  indev_drv.read_cb = touch_driver_read;
  indev_drv.type = LV_INDEV_TYPE_POINTER;
  lv_indev_drv_register(&indev_drv);
#endif

  /* Create and start a periodic timer interrupt to call lv_tick_inc */
  const esp_timer_create_args_t periodic_timer_args = {
      .callback = &lv_tick_task,
      .arg = nullptr,
      .dispatch_method = ESP_TIMER_TASK,
      .name = "periodic_gui",
      .skip_unhandled_events = false,
  };
  esp_timer_handle_t periodic_timer;
  ESP_ERROR_CHECK(esp_timer_create(&periodic_timer_args, &periodic_timer));
  ESP_ERROR_CHECK(
      esp_timer_start_periodic(periodic_timer, LV_TICK_PERIOD_MS * 1000));

  create_demo_application();

  while (true) {
    /* Delay 1 tick (assumes FreeRTOS tick is 10ms */
    vTaskDelay(pdMS_TO_TICKS(10));

    if (pdTRUE == xSemaphoreTake(xGuiSemaphore, portMAX_DELAY)) {
      lv_task_handler();
      xSemaphoreGive(xGuiSemaphore);
    }
  }

  /* A task should NEVER return */
  free(buf1);
#ifndef CONFIG_LV_TFT_DISPLAY_MONOCHROME
  free(buf2);
#endif
  vTaskDelete(nullptr);
}

void ResetTouchPanel() {
  ESP_ERROR_CHECK(gpio_set_level(GPIO_NUM_4, 0));
  vTaskDelay(pdMS_TO_TICKS(50));
  ESP_ERROR_CHECK(gpio_set_level(GPIO_NUM_4, 1));
}

}  // namespace

extern "C" void app_main() {
  ESP_LOGI(TAG, "CapTouchStarter app!");
  LogHardwareInfo();

  ResetTouchPanel();

  // Turn on utility LED.
  ESP_ERROR_CHECK(gpio_set_level(GPIO_NUM_32, 1));

  xTaskCreatePinnedToCore(guiTask, "gui", 4096 * 2, nullptr, 0, nullptr, 1);
}
