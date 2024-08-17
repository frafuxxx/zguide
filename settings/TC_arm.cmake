# the name of the target operating system
set(CMAKE_CROSSCOMPILING TRUE)
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(triple arm-none-linux-gnueabihf)
set(gcc_toolchain /home/fuxxx/workspace/zero_mq/arm-gnu-toolchain-13.3.rel1-x86_64-arm-none-linux-gnueabihf)


# where is the target environment located
set(CMAKE_FIND_ROOT_PATH  ${gcc_toolchain}/arm-none-linux-gnueabihf)
set(CMAKE_SYSROOT ${gcc_toolchain}/arm-none-linux-gnueabihf/libc)
set(CMAKE_LIBRARY_PATH ${gcc_toolchain}/arm-none-linux-gnueabihf/lib)

# which compilers to use for C and C++
set(CMAKE_C_COMPILER_EXTERNAL_TOOLCHAIN ${gcc_toolchain})
set(CMAKE_CXX_COMPILER_EXTERNAL_TOOLCHAIN ${gcc_toolchain})
set(CMAKE_C_COMPILER   ${gcc_toolchain}/bin/${triple}-gcc)
set(CMAKE_CXX_COMPILER ${gcc_toolchain}/bin/${triple}-g++)
set(CMAKE_C_COMPILER_TARGET ${triple})
set(ARCH_FLAGS "-target arm-none-linux-gnueabihf")

#set(CMAKE_GENERATOR_TOOLSET  Ninja)
#set(CMAKE_MAKE_PROGRAM    make)

# adjust the default behavior of the FIND_XXX() commands:
# search programs in the host environment
# search for programs in the build host directories
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)