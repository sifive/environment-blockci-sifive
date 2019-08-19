FROM ubuntu:xenial

RUN apt-get update && apt-get install -y \
   openjdk-8-jdk \
   software-properties-common \
   git  

RUN git clone --branch v0.10.1 https://github.com/sifive/wit.git
ENV PATH=$PATH:$PWD/wit

CMD bash 
