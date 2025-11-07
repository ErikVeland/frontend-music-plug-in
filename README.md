projectM Plug-In for Apple Music
================================

This repository contains the sources for the macOS Apple Music app projectM visualization plug-in that turns your music
into awesome visuals while you listen.

## Overview

This is a visualizer plugin for Apple Music (formerly iTunes) that uses the libprojectM 4.1.5 library to create
real-time audio visualizations. The plugin works with both Intel and Apple Silicon Macs.

## Features

- Compatible with Apple Music on macOS 11+
- Universal binary support (Intel x86_64 and Apple Silicon arm64)
- Uses the latest libprojectM 4.1.5 API
- Includes a collection of visualization presets
- Easy installation via PKG installer

## Installation

1. Download the latest PKG installer from the Releases page
2. Run the installer and follow the prompts
3. Restart Apple Music
4. Enable the visualizer: Window → Visualizer

## Building from Source

### Prerequisites

- Xcode Command Line Tools
- CMake 3.21 or higher
- libprojectM 4.1.5 installed

### Build Instructions

```bash
mkdir build
cd build
cmake -DPRESET_DIRS=/path/to/presets ..
make
cpack -G productbuild
```

## License

This project is licensed under the LGPL 2.1 license - see the LICENSE.md file for details.