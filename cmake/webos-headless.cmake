# Minimal HyperHDR profile for rooted LG webOS TVs using PicCap and a
# CDC-ACM/Adalight-compatible LED controller. Load with:
#   cmake -C cmake/webos-headless.cmake <other arguments> ..

set(ENABLE_WEBSERVER OFF CACHE BOOL "No HTTP/HTTPS or web UI" FORCE)
set(ENABLE_SSDP OFF CACHE BOOL "No SSDP discovery" FORCE)
set(ENABLE_BONJOUR OFF CACHE BOOL "No mDNS discovery" FORCE)
set(ENABLE_MQTT OFF CACHE BOOL "No MQTT client" FORCE)
set(ENABLE_NETWORK_LED_DEVICES OFF CACHE BOOL "USB serial controller only" FORCE)

set(ENABLE_SPIDEV OFF CACHE BOOL "USB serial controller only" FORCE)
set(ENABLE_SPI_FTDI OFF CACHE BOOL "USB serial controller only" FORCE)
set(ENABLE_WS281XPWM OFF CACHE BOOL "No Raspberry Pi PWM" FORCE)
set(ENABLE_PWM_LED_DEVICES OFF CACHE BOOL "No Raspberry Pi PWM" FORCE)

set(ENABLE_V4L2 OFF CACHE BOOL "Frames arrive from PicCap" FORCE)
set(ENABLE_X11 OFF CACHE BOOL "No desktop grabber" FORCE)
set(ENABLE_PIPEWIRE OFF CACHE BOOL "No desktop grabber" FORCE)
set(ENABLE_PIPEWIRE_EGL OFF CACHE BOOL "No desktop grabber" FORCE)
set(ENABLE_FRAMEBUFFER OFF CACHE BOOL "No framebuffer grabber" FORCE)
set(ENABLE_AMLOGIC OFF CACHE BOOL "No Amlogic grabber" FORCE)
set(ENABLE_SOUNDCAPLINUX OFF CACHE BOOL "No sound capture" FORCE)

set(ENABLE_CEC OFF CACHE BOOL "No CEC integration" FORCE)
set(ENABLE_PROTOBUF OFF CACHE BOOL "FlatBuffers and JSON only" FORCE)
set(ENABLE_POWER_MANAGEMENT OFF CACHE BOOL "Power is managed by webOS hooks" FORCE)
set(ENABLE_SYSTRAY OFF CACHE BOOL "Headless daemon" FORCE)

# Keep compressed LUT support for the existing HDR/SDR workflow.
set(ENABLE_ZSTD ON CACHE BOOL "Keep compressed HDR LUT support" FORCE)

# Cross builds embed resources by default. No web resources are compiled when
# ENABLE_WEBSERVER is off, while keeping this on avoids installer expectations.
set(USE_EMBEDDED_WEB_RESOURCES ON CACHE BOOL "No external web resource package" FORCE)
