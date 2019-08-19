FROM ubuntu:xenial 

RUN apt-get update && apt-get install -y \
  wget \
  zip \
  curl \
  openjdk-8-jdk \
  software-properties-common \
  device-tree-compiler \
  libfdt-dev \
  libre2-dev \
  nodejs \
  python3-pip \
  makedev \
  fuse \
  libfuse-dev \
  libsqlite3-dev \
  libgmp-dev \
  libncurses5-dev \
  pkg-config \
  git \
  g++ \
  gcc \
  libtool-bin \
  autoconf \
  autotools-dev 

RUN wget https://github.com/sifive/wake/releases/download/v0.15.1/ubuntu-16.04-wake_0.15.1-1_amd64.deb && \
    dpkg -i ubuntu-16.04-wake_0.15.1-1_amd64.deb
   
RUN wget https://github.com/protocolbuffers/protobuf/releases/download/v3.7.1/protoc-3.7.1-linux-x86_64.zip && \
    unzip protoc-3.7.1-linux-x86_64.zip
