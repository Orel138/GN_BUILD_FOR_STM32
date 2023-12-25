<a name="readme-top"></a>

<h1 align="center">
  <br> ⚙️ GN_BUILD_FOR_STM32 🐱‍👤 <br>
</h1>

<div align="center">

[![Orel138 - GN_BUILD_FOR_STM32](https://img.shields.io/static/v1?label=Orel138&message=GN_BUILD_FOR_STM32&color=blue&logo=github)](https://github.com/Orel138/GN_BUILD_FOR_STM32 "Go to GitHub repo")
[![stars - GN_BUILD_FOR_STM32](https://img.shields.io/github/stars/Orel138/GN_BUILD_FOR_STM32?style=social)](https://github.com/Orel138/GN_BUILD_FOR_STM32)
[![forks - GN_BUILD_FOR_STM32](https://img.shields.io/github/forks/Orel138/GN_BUILD_FOR_STM32?style=social)](https://github.com/Orel138/GN_BUILD_FOR_STM32)

[![Open in Visual Studio Code](https://img.shields.io/static/v1?logo=visualstudiocode&label=&message=Open%20in%20Visual%20Studio%20Code&labelColor=2c2c32&color=007acc&logoColor=007acc)](https://open.vscode.dev/Orel138/GN_BUILD_FOR_STM32)
[![tests](https://github.com/Orel138/GN_BUILD_FOR_STM32/workflows/tests/badge.svg)](https://github.com/Orel138/GN_BUILD_FOR_STM32/actions?query=workflow:"tests")
[![license](https://custom-icon-badges.demolab.com/github/license/Orel138/GN_BUILD_FOR_STM32?logo=law&logoColor=white)](https://github.com/Orel138/GN_BUILD_FOR_STM32/blob/main/LICENSE "license MIT")
[![issues](https://custom-icon-badges.demolab.com/github/issues-raw/Orel138/GN_BUILD_FOR_STM32?logo=issue)](https://github.com/Orel138/GN_BUILD_FOR_STM32/issues "issues")

[![STM32](https://img.shields.io/badge/STM32-message?style=flat&logo=stmicroelectronics&color=%2303234B)](https://st.com "STM32")

[![Use this template](https://img.shields.io/badge/Use_as_template-2ea44f?style=flat&color=blue)](https://github.com/Orel138/GN_BUILD_FOR_STM32/generate)
[![View site - GH Pages](https://img.shields.io/badge/View_site-GH_Pages-2ea44f?style=flat&color=red)](https://orel138.github.io/GN_BUILD_FOR_STM32/)

</div>

<div align="center">
  <h4>
    <a href="#about">About</a> |
    <a href="#installation">Installation</a> |
    <a href="#usage">Usage</a> |
    <a href="#references">References</a> |
    <a href="#license">License</a>
  </h4>
</div>

<div align="center">
  <sub>Built by
  <a href="https://orel138.github.io">Orel138</a> and
  <a href="https://github.com/orel138/gn_build_for_stm32/graphs/contributors">contributors </a>
</div>
<br>

### A Template for STM32 Development
This project serves as a template for starting development on STM32 platforms using Generate Ninja ("GN") and Ninja, offering a foundational structure that can be easily modified and extended.

## Table of Contents

- [About](#about)
- [Architecture Overview](#architecture-overview)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [References](#references)
- [Contributing](#contributing)
- [License](#license)

## About

_GN_BUILD_FOR_STM32_ is a simple project designed to build projects for STM32 microcontrollers using Generate Ninja ("GN") and Ninja build systems. This project aims to provide a streamlined and efficient build process for STM32 applications.

### Features
- Easy setup for building STM32 projects.
- Fast build times leveraging Ninja's efficient build system.
- Clear separation of source code and build configurations.

> [!TIP]
> I trust you'll find this project enjoyable. Should you appreciate the project, bestowing a small ⭐ on it is a meaningful gesture, signifying: **My efforts are recognized.** Your support would be greatly valued. _Many thanks!_

### Overview
A "Blink_LED" example within the GN_BUILD_FOR_STM32 project serves as a practical demonstration and a template for configuring and building STM32 projects. This simple example, specifically designed for the STM32WB55 board, makes the onboard LEDs blink, illustrating the basic functionality of the system.

### Flexibility and Compatibility
**Board Family Adaptability**: The project is structured to allow easy adaptation to different STM32 family boards (such as U5, L4, H7, etc.) by modifying the defines, source, and include directories in the `BUILD.gn` file of the application.

> [!IMPORTANT]
> **Driver Compatibility**: Switching between different STM32 families involves updating the drivers (HAL/BSP and CMSIS Device) to match the specific requirements of the target board.

### Alignment with STMicroelectronics' STM32Cube Topology
_GN_BUILD_FOR_STM32_ follows the topology of the official packages provided by STMicroelectronics, known as ["STM32Cube."](https://github.com/STMicroelectronics/STM32Cube_MCU_Overall_Offer)

This means that the project is compatible with various STM32Cube Firmware Packages such as **STM32Cube Firmware Packages** (e.g., [STM32CubeH7](https://github.com/STMicroelectronics/STM32CubeH7), [STM32CubeWB](https://github.com/STMicroelectronics/STM32CubeWB)) or **Cube Extension Softwares** (e.g., [X-CUBE-AZURE](https://github.com/STMicroelectronics/x-cube-azure-telematics), [X-CUBE-FREERTOS](https://github.com/STMicroelectronics/x-cube-freertos)), enabling further expansion and customization for specific applications.
<p align="right"><a href="#readme-top">~~~~~ back to top ~~~~~</a></p>

## Architecture Overview

### Build Workflow
The GN_BUILD_FOR_STM32 project utilizes a streamlined build workflow that integrates Generate Ninja (GN), Ninja build system, and ARM Toolchain to produce `.elf` files compatible with STM32 microcontrollers and debuggable.

1. **Generate Ninja (GN)**: GN takes high-level build configurations and generates detailed instructions in the form of Ninja files. These configurations include paths, compiler flags, and file dependencies.
   
2. **Ninja Build System**: Ninja reads the generated files and executes the build instructions efficiently, taking advantage of parallel processing and minimizing unnecessary rebuilds.
   
3. **ARM Toolchain (`arm-none-eabi-gcc`)**: The ARM toolchain compiles the source code into an executable `.elf` file, specifically tailored for STM32 microcontrollers.

<p align="right"><a href="#readme-top">~~~~~ back to top ~~~~~</a></p>

## Requirements

Before you begin, ensure you have met the following requirements:
- Installed [Generate Ninja](https://gn.googlesource.com/gn/)
- Installed [Ninja build system](https://ninja-build.org/)
- Installed [ARM toolchain](https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads)

<p align="right"><a href="#readme-top">~~~~~ back to top ~~~~~</a></p>

### Installation

To install GN_BUILD_FOR_STM32, follow these steps:

1. Clone the repository
   ```sh
   git clone https://github.com/Orel138/STM32_GN_Build.git
   ```
2. Navigate to the project directory
   ```sh
   cd GN_BUILD_FOR_STM32
   ```
3. Run the following command in a terminal (BASH) at the root path of the project.
   ```sh
   source ./scripts/run_test.sh Projects/NUCLEO-WB55RG/Examples/Blink_LED
   ```
4. The executable (`.elf` file) for the Blink_LED example will be in `Projects/NUCLEO-WB55RG/Examples/Blink_LED/out/test`
- You can now drag and drop the `.elf` file in your NUCLEO-WB55RG board (if you have one) and see the user LED blink.
- Or you can modify the project for your STM32 target.

<p align="right"><a href="#readme-top">~~~~~ back to top ~~~~~</a></p>

## Usage
If you don't want to use the script run_test.sh you can do the following for building with GN and Ninja:

Go in the root directory of your project (the directory where there is a `BUILD.gn` file) and:
```sh
gn gen out/debug
```
```sh
ninja -C out/debug`
```
<p align="right"><a href="#readme-top">~~~~~ back to top ~~~~~</a></p>

## References

- [Generate Ninja](https://gn.googlesource.com/gn/) - A blog-aware static site generator in Ruby.
- [Ninja Build](https://ninja-build.org/) - Lightweight markup processor to produce HTML, LaTeX, and more.
- [ARM toolchain](https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads)
- [Matter](https://github.com/project-chip/connectedhomeip/tree/master) - The Matter IoT protocol SDK also use a similar approach, demonstrating the effectiveness and versatility of this method in a larger and complex project. By following the patterns and structures used in GN_BUILD_FOR_STM32, users can align their development practices with industry standards and best practices.

## Contributing
We welcome your contributions to _GN_BUILD_FOR_STM32_.

To contribute:
1. Fork the repository.
2. Create a new branch: git checkout -b [branch-name].
3. Make your changes and commit them: git commit -m '[commit-message]'.
4. Push to the original branch: git push origin [project-name]/[location].
5. Create the pull request.

<p align="right"><a href="#readme-top">~~~~~ back to top ~~~~~</a></p>

## License
_GN_BUILD_FOR_STM32_ is released under the [MIT license](/LICENSE) © [Aurélien REYNAUD](https://github.com/Orel138).
<p align="right"><a href="#readme-top">~~~~~ back to top ~~~~~</a></p>
