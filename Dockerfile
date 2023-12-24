# Use an official Ubuntu image as a base
FROM ubuntu:latest

LABEL maintainer="Aurélien REYNAUD"
LABEL description="This Dockerfile installs Generate Ninja, Ninja, ARM toolchain and tools for testing the project"

# Update the packages and install the necessary tools for testing
RUN set -x \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -fy --fix-missing \
    binutils-arm-none-eabi \
    clang \
    gcc-arm-none-eabi \
    git \
    ninja-build \
    python3 \
    && : # last line

# build and install gn
RUN set -x \
    && git clone https://gn.googlesource.com/gn \
    && cd gn \
    && python3 build/gen.py \
    && ninja -C out \
    && cp out/gn /usr/local/bin \
    && cd .. \
    && rm -rf gn \
    && : # last line

# git Clone the project
RUN git clone --recurse-submodules https://github.com/Orel138/GN_BUILD_FOR_STM32.git app

# Set working directory
WORKDIR /app

# Default command when container starts
CMD ["bash"]