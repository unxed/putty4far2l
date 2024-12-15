#!/bin/bash
#
# install compiler first:
# sudo apt install mingw-w64
#
# i686 (32 bit) version is built by default.
#
# For x86_64 (64 bit) build, replace
# i686-w64-mingw32
# with
# x86_64-w64-mingw32
#
cmake -DCMAKE_SYSTEM_NAME=Windows \
      -DCMAKE_SYSTEM_PROCESSOR=x86 \
      -DCMAKE_C_COMPILER=i686-w64-mingw32-gcc \
      -DCMAKE_CXX_COMPILER=i686-w64-mingw32-g++ \
      -DCMAKE_RC_COMPILER=i686-w64-mingw32-windres \
      -B build -S .
cd build
make -j$(nproc --all)
