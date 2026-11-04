# webOS headless build

This fork adds a minimal build profile for rooted LG webOS TVs that receive
frames from PicCap and drive a CDC-ACM/Adalight-compatible controller.

The profile keeps:

- the FlatBuffers server used by PicCap;
- the JSON server used by automation and maintenance scripts;
- LED layout, color processing, smoothing and serial LED drivers;
- ZSTD support for the existing HDR LUT workflow.

It removes the HTTP/HTTPS web interface, its embedded assets, SSDP, Bonjour,
MQTT, desktop/video/sound grabbers, CEC, Protobuf, systray and Raspberry Pi or
FTDI-specific and network LED output paths.

Configure a webOS cross build with the preload file before the regular loader
arguments:

```sh
cmake -C ../cmake/webos-headless.cmake \
  -DCMAKE_TOOLCHAIN_FILE=/path/to/webos/toolchainfile.cmake \
  -DCMAKE_BUILD_TYPE=Release \
  -DPLATFORM=linux \
  ..
```

Runtime control remains available through the JSON API. The web interface is
not available in this profile.
