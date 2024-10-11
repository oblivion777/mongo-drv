#!/bin/bash
#mongo-cxx

srcVersion="r3.11.0"

mkdir .tmp
cd .tmp

# 下载
curl -OL https://github.com/mongodb/mongo-cxx-driver/releases/download/${srcVersion}/mongo-cxx-driver-${srcVersion}.tar.gz
tar -xzf mongo-cxx-driver-${srcVersion}.tar.gz

installPath="${HOME}/mongo-drv/mongo-cxx"
mongo_c_path="${HOME}/mongo-drv/mongo-c"

cd mongo-cxx-driver-${srcVersion}/build
#配置
cmake ..     \
   -DCMAKE_C_COMPILER=clang \
   -DCMAKE_CXX_COMPILER=clang++ \
   -DLLVM_USE_LINKER=lld \
   -DCMAKE_BUILD_TYPE=Release          \
   -DCMAKE_INSTALL_PREFIX=${installPath}  \
   -DCMAKE_PREFIX_PATH=${mongo_c_path}
#构建
cmake --build . --parallel
#安装
cmake --build . --target install

mv ${installPath} ../../../
mv ${mongo_c_path} ../../../

#收拾垃圾
rm -rf "${HOME}/mongo-drv"