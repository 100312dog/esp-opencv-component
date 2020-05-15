dir
mkdir build
cd build
dir
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=../install \
    -DBUILD_TESTS=0 -DBUILD_PERF_TESTS=0 \
    -DBUILD_ZLIB=1 -DWITH_TIFF=1 -DWITH_OPENMP=0 \
    -DWITH_OPENCL=0 -DWITH_OPENGL=0 \
    -DCMAKE_TOOLCHAIN_FILE=cmake/toolchain-esp32.cmake \
    -DTARGET=esp32 -DOPENCV_FORCE_3RDPARTY_BUILD=1 \
    -DWITH_PROTOBUF=0 -DWITH_ADE=0 \
    -I $IDF_PATH/components/vfs/include/sys \
    -DBUILD_opencv_imgproc=1 \
    -DBUILD_EXAMPLES=0 \
    -DCV_CPU_BASELINE_MODE=esp32 \
    CV_DISABLE_OPTIMIZATION=0 -DBUILD_JPEG=1 \
    -DWITH_JPEG=1 -DBUILD_opencv_imgcodecs=1 -DBUILD_opencv_video=1 \
    -DBUILD_opencv_videoio=0 -DBUILD_SHARED_LIBS=0 \
    -DBUILD_PACKAGE=1 -DBUILD_opencv_apps=0 ../opencv
dir
make -j2
make install