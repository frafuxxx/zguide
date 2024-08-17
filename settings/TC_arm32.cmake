# the name of the target operating system
set(CMAKE_CROSSCOMPILING TRUE)
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm32)

set(triple arm-none-linux-gnueabihf)
set(CROSS_GCC_TOOLCHAIN_PATH /home/fuxxx/workspace/zero_mq/arm-gnu-toolchain-13.3.rel1-x86_64-arm-none-linux-gnueabihf)

# where is the target environment located
set(CMAKE_FIND_ROOT_PATH  ${CROSS_GCC_TOOLCHAIN_PATH}/arm-none-linux-gnueabihf)
set(CMAKE_SYSROOT ${CROSS_GCC_TOOLCHAIN_PATH}/arm-none-linux-gnueabihf/libc)
set(CMAKE_LIBRARY_PATH ${CROSS_GCC_TOOLCHAIN_PATH}/arm-none-linux-gnueabihf/lib)

set(CMAKE_C_COMPILER   ${CROSS_GCC_TOOLCHAIN_PATH}/bin/${triple}-gcc)
set(CMAKE_CXX_COMPILER ${CROSS_GCC_TOOLCHAIN_PATH}/bin/${triple}-g++)


# search for programs in the build host directories
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)