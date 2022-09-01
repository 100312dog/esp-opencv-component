cd opencv
mkdir build
cd build
    # -DCMAKE_C_FLAGS="-O3 -ggdb -DDEBUG -D_DEBUG -DCV_INT32_T_IS_LONG_INT=ON" \
    # -DCMAKE_CXX_FLAGS="-O3 -ggdb -DDEBUG -D_DEBUG -DCV_INT32_T_IS_LONG_INT=ON" \
cmake \
    -DCMAKE_C_FLAGS="-O3 -ggdb -DDEBUG -D_DEBUG" \
    -DCMAKE_CXX_FLAGS="-O3 -ggdb -DDEBUG -D_DEBUG" \
    -DCV_INT32_T_IS_LONG_INT=ON \
    -DCMAKE_BUILD_TYPE=Release \
    -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \
    -DCMAKE_INSTALL_PREFIX=../../install \
    -DBUILD_TESTS=0 -DBUILD_PERF_TESTS=0 \
    -DBUILD_ZLIB=1 -DWITH_TIFF=1 -DWITH_OPENMP=0 \
    -DWITH_OPENCL=0 -DWITH_OPENGL=0 \
    -DCMAKE_TOOLCHAIN_FILE=$IDF_PATH/tools/cmake/toolchain-esp32.cmake \
    -DTARGET=esp32 -DOPENCV_FORCE_3RDPARTY_BUILD=1 \
    -DWITH_PROTOBUF=0 -DWITH_ADE=0 \
    -I $IDF_PATH/components/vfs/include/sys \
    -I $IDF_PATH/components/newlib/platform_include/sys \
    -DBUILD_opencv_imgproc=1 \
    -DBUILD_EXAMPLES=0 \
    -DCV_CPU_BASELINE_MODE=esp32 \
    CV_DISABLE_OPTIMIZATION=0 -DBUILD_JPEG=1 \
    -DWITH_JPEG=1 -DBUILD_opencv_imgcodecs=1 -DBUILD_opencv_video=1 \
    -DBUILD_opencv_tracking=1 \
    -DBUILD_opencv_datasets=0 \
    -DBUILD_opencv_ximgproc=0 \
    -DBUILD_opencv_xfeatures2d=0 \
    -DBUILD_opencv_bgsegm=0 \
    -DBUILD_opencv_videoio=0 -DBUILD_SHARED_LIBS=0 \
    -DBUILD_PACKAGE=1 -DBUILD_opencv_apps=0 \
    ../../opencv
dir
make -j2
make install