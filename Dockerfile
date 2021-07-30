FROM ubuntu:18.04

RUN apt-get update && apt-get install -y --no-install-recommends \
  clang \
  make \
  file \
  curl \
  git \
  bzip2 \
  xz-utils \
  wget \
  pkg-config

COPY freebsd-toolchain.sh /tmp/
RUN /tmp/freebsd-toolchain.sh x86_64

ENV \
    AR_x86_64_unknown_freebsd=x86_64-unknown-freebsd11-ar \
    CC_x86_64_unknown_freebsd=x86_64-unknown-freebsd11-clang \
    CXX_x86_64_unknown_freebsd=x86_64-unknown-freebsd11-clang++

ENV HOSTS=x86_64-unknown-freebsd
