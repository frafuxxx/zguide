cmake_minimum_required(VERSION 3.11)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(hwserver hwserver.cpp)
target_link_libraries(hwserver zmq)
add_executable(hwclient hwclient.cpp)
target_link_libraries(hwclient zmq)

project(zeromqexamples VERSION 0.1.0 LANGUAGES C CXX)