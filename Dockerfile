FROM ubuntu:xenial 

RUN apt-get update && apt-get install -y \
  autoconf \
  autotools-dev \
  curl \
  device-tree-compiler \
  fuse \
  g++ \
  gcc \
  git \
  libfdt-dev \
  libfuse-dev \
  libgmp-dev \
  libncurses5-dev \
  libre2-dev \
  libsqlite3-dev \
  libtool-bin \
  makedev \
  nodejs \
  openjdk-8-jdk \
  pkg-config \
  python \
  python3-pip \
  software-properties-common \
  zip

# Install RISC-V Toolchain into /opt/risc*
RUN curl -L -o /tmp/riscv-tools.tar.gz https://static.dev.sifive.com/dev-tools/riscv64-unknown-elf-gcc-8.2.0-2019.05.3-x86_64-linux-ubuntu14.tar.gz && \
    tar xzf /tmp/riscv-tools.tar.gz -C /opt && \
    rm /tmp/riscv-tools.tar.gz

# Install protocol buffers (protoc) into /usr/local
RUN curl -L -o /tmp/protoc.zip https://github.com/protocolbuffers/protobuf/releases/download/v3.5.1/protoc-3.5.1-linux-x86_64.zip && \
    cd /usr/local && \
    unzip /tmp/protoc.zip && \
    rm /tmp/protoc.zip

# Install Verilator into /usr/local
RUN curl -L -o /tmp/verilator.deb -L https://github.com/sifive/verilator/releases/download/4.028-0sifive1/verilator_4.028-0sifive1_amd64.deb && \
  apt install -y /tmp/verilator.deb && \
  rm /tmp/verilator.deb

# Install Wake into /usr
RUN curl -L -o /tmp/wake.deb https://github.com/sifive/wake/releases/download/v0.17.2/ubuntu-16-04-wake_0.17.2-1_amd64.deb && \
    dpkg -i /tmp/wake.deb && \
    rm /tmp/wake.deb

# Install Python 3.7
RUN add-apt-repository ppa:deadsnakes/ppa && \
  apt-get update && \
  apt-get install -y python3.7 python3.7-venv && \
  curl -L https://github.com/pypa/get-pip/raw/0eed4d8903dab820c92779716ab66c414d8b11a4/get-pip.py | python3.7 - 'pip==18.1'

# Install Ruby
RUN add-apt-repository -y ppa:brightbox/ruby-ng && \
  apt-get update && \
  apt-get install -y ruby2.5 ruby2.5-dev && \
  gem2.5 install bundler -v 2.0.2
