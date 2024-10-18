#!/bin/bash
#clang
tags="llvmorg-19.1.1"
git clone -b ${tags} --depth 1 https://github.com/llvm/llvm-project.git ./.tmp/llvm-project-src
cd ./.tmp/llvm-project-src
#配置编译选项
cmake -S llvm -B build -G Ninja \
      -DCMAKE_BUILD_TYPE=Release \
      -DLLVM_USE_LINKER=lld \
      -DCMAKE_C_FLAGS="-O2" \
      -DCMAKE_CXX_FLAGS="-O2" \
      -DCMAKE_C_COMPILER=clang \
      -DCMAKE_CXX_COMPILER=clang++ \
      -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra;lldb;lld" \
      -DLLVM_ENABLE_RTTI=ON \
      -DLLVM_ENABLE_EH=ON

cmake --build build

sudo ninja -C build install
