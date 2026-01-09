cmake_minimum_required(VERSION 3.20)
project(find-onnxruntime)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR};${CMAKE_MODULE_PATH}")
set(CMAKE_CXX_STANDARD 11) # 设置C++标准为11
set(onnx_version 1.23.2) # 根据下载的版本进行设置,本例使用1.23.2版本

# 请下载onnxruntime库的压缩包(可在github下载),并解压值该目录
# 下面的环境变量设置仅做演示目的,实际开发中不应该将依赖的安装目录硬编码在代码中
if("$ENV{onnxrumtime_ROOT}" STREQUAL "")
    if(WIN32)
        set(ENV{onnxruntime_ROOT} "${CMAKE_CURRENT_LIST_DIR}/onnxruntime-win-x64-1.23.2")
    elseif(APPLE)
        set(ENV{onnxruntime_ROOT} "${CMAKE_CURRENT_LIST_DIR}/onnxruntime-osx-universal2-1.23.2")
    else()
        set(ENV{onnxruntime_ROOT} "${CMAKE_CURRENT_LIST_DIR}/onnxruntime-linux-x64-1.23.2")
    endif()
endif()

find_package(onnxruntime 1.23.2) # 指定依赖的最小版本
add_executable(main main.cpp)
target_link_libraries(main onnxruntime::onnxruntime)
target_compile_definitions(main PRIVATE ORT_NO_EXCEPTIONS)