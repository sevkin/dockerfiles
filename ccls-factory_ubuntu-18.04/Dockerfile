FROM ubuntu:18.04 AS ccls-factory
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install -y -qq git cmake clang-10 libclang-10-dev llvm-10-dev zlib1g-dev
RUN git clone --depth=1 --recursive https://github.com/MaskRay/ccls
WORKDIR /ccls
RUN cmake -H. -BRelease -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=/usr/lib/llvm-10
RUN cmake --build Release
