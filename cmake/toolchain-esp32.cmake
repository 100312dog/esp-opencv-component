set(CMAKE_SYSTEM_NAME Generic)

set(CMAKE_C_COMPILER xtensa-esp32-elf-gcc)
set(CMAKE_CXX_COMPILER xtensa-esp32-elf-g++)
set(CMAKE_ASM_COMPILER xtensa-esp32-elf-gcc)

set(CMAKE_C_FLAGS "-mlongcalls -Wno-frame-address" CACHE STRING "C Compiler Base Flags")
set(CMAKE_CXX_FLAGS "-mlongcalls -Wno-frame-address" CACHE STRING "C++ Compiler Base Flags")

# this lines to build OpenCV
include_directories("$IDF_PATH/components/vfs/include/sys")

set(CMAKE_CXX_FLAGS "-fpermissive -mlongcalls -I$IDF_PATH/components/vfs/include/sys -I/home/osboxes/work/esp-idf/components/vfs/include/sys")
#set(CMAKE_CXX_FLAGS "-fpermissive -std=c++11 -mlongcalls -U__STRICT_ANSI__ -I$IDF_PATH/components/vfs/include/sys -I/home/osboxes/work/esp-idf/components/vfs/include/sys")
#set(CFLAGS "-mlongcalls -std=c++11 " APPEND)
#set(CXXFLAGS "-mlongcalls -std=c++11 "  APPEND)
