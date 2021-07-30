FROM ubuntu:18.04

RUN apt-get update && apt-get install -y --no-install-recommends \
  clang \
  make \
  file \
  curl \
  ca-certificates \
  wget \
  pkg-config

COPY freebsd-toolchain.sh /tmp/
RUN /tmp/freebsd-toolchain.sh x86_64

ENV \
    AR=x86_64-unknown-freebsd11-ar \
    CC=x86_64-unknown-freebsd11-clang \
    CX=x86_64-unknown-freebsd11-clang++

ENV HOSTS=x86_64-unknown-freebsd
