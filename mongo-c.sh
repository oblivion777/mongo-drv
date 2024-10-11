#!/bin/bash
#mongo-c
version="1.28.0"
srcPath="./mongo-c-src"
installPath="${HOME}/mongo-drv/mongo-c"

#获取源代码
git clone --depth 1 https://github.com/mongodb/mongo-c-driver.git --branch=${version} ${srcPath}

cd ${srcPath}
#配置libbson
cmake -S . -B ./build \
   -D ENABLE_EXTRA_ALIGNMENT=OFF \
   -D ENABLE_AUTOMATIC_INIT_AND_CLEANUP=OFF \
   -D CMAKE_BUILD_TYPE=RelWithDebInfo \
   -D BUILD_VERSION=${version} \
   -D ENABLE_MONGOC=OFF

#构建libbson
cmake --build ./build --config RelWithDebInfo --parallel
#配置libmongoc
cmake -D ENABLE_MONGOC=ON ./build
#构建libmongoc
cmake --build ./build --config RelWithDebInfo --parallel
#安装构建结果
cmake --install ./build --prefix ${installPath} --config RelWithDebInfo
