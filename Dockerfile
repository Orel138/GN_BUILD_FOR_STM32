# Use an official Ubuntu image as a base
FROM ubuntu:latest

LABEL maintainer="Aurélien REYNAUD"
LABEL description="This Dockerfile installs Generate Ninja, Ninja, arm-none-eabi toolchain and tools for testing the project"

# Update the packages and install the necessary tools for testing
RUN set -x \
    && apt-get update \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:deadsnakes/ppa \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -fy --fix-missing \
    binutils-arm-none-eabi \
    clang \
    curl \
    g++-10 \
    gcc-arm-none-eabi \
    git \
    make \
    ninja-build \
    python-is-python3 \
    python3.9 \
    python3.9-dev \
    python3.9-venv \
    systemd \
    udev \
    unzip \
    wget \
    && : # last line

# Install PIP and configure Python 3.9
RUN set -x \
    && DEBIAN_FRONTEND=noninteractive  apt-get update \
    && DEBIAN_FRONTEND=noninteractive  apt-get install -y libgirepository1.0-dev \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common \
    && add-apt-repository universe \
    && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
    && python3.9 get-pip.py \
    && update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 1 \
    && rm -rf /var/lib/apt/lists/ \
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


# Set the working directory (optional)
WORKDIR /gn-test-workdir

# Default command when container starts
CMD ["bash"]