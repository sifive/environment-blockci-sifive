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
  python3-pip \
  software-properties-common \
  wget \
  zip

RUN wget https://github.com/sifive/wake/releases/download/v0.15.1/ubuntu-16.04-wake_0.15.1-1_amd64.deb && \
    dpkg -i ubuntu-16.04-wake_0.15.1-1_amd64.deb
   
RUN wget https://github.com/protocolbuffers/protobuf/releases/download/v3.7.1/protoc-3.7.1-linux-x86_64.zip && \
    unzip protoc-3.7.1-linux-x86_64.zip
