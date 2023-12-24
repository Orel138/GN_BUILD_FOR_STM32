#!/bin/bash

# Set variables
ELF_NAME="Blink_LED.elf"
GN_ENTRY_POINT=${1:-.}  # GN entry point, defaults to current directory
BUILD_DIR="$GN_ENTRY_POINT/out/test"  # BUILD_DIR at the root of GN_ENTRY_POINT

# Initialize GN (Generate Ninja)
echo "Running GN in $GN_ENTRY_POINT..."
(cd $GN_ENTRY_POINT && gn gen out/test)
GN_STATUS=$?
if [ $GN_STATUS -ne 0 ]; then
  echo -e "\e[31mGN Failed\e[0m"
  exit $GN_STATUS
else
  echo -e "\e[32mGN Succeeded\e[0m"
fi

# Build with Ninja
echo "Building with Ninja in $BUILD_DIR..."
(cd $GN_ENTRY_POINT && ninja -C out/test)
NINJA_STATUS=$?
if [ $NINJA_STATUS -ne 0 ]; then
  echo -e "\e[31mNinja Build Failed\e[0m"
  exit $NINJA_STATUS
else
  echo -e "\e[32mNinja Build Succeeded\e[0m"
fi

# Check the ELF file
echo "Checking ELF File..."
if [ -f $BUILD_DIR/$ELF_NAME ]; then
  echo -e "\e[32mBuild successful.\e[0m"
else
  echo -e "\e[31mBuild failed.\e[0m"
  exit 1
fi