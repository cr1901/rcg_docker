FROM ubuntu:20.04
WORKDIR /work
COPY . .
RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    libgmp-dev \
    libmpfr-dev \
    libmpc-dev \
    make \
    flex \
    bison \
    m4 \
    curl \
    git \
    python
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain none --profile minimal
