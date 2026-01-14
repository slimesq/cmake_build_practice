cmake_minimum_required(VERSION 3.20)
project(num_recognizer)

if(MSVC)
    add_compile_options(/utf-8)
endif()

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")
message("CMAKE_MODULE_PATH = ${CMAKE_MODULE_PATH}")
set(CMAKE_CXX_STANDARD 11) # 设置C++标准为11

set(onnx_version 1.16.0)

# 请下载onnxruntime库的压缩包,并解压至该目录中
if("$ENV{onnxruntime_ROOT}" STREQUAL "")
    if(WIN32)
        set(ENV{onnxruntime_ROOT} "${CMAKE_CURRENT_LIST_DIR}/third_party/onnxruntime-training-win-x64-${onnx_version}")
    elseif(APPLE)
        set(ENV{onnxruntime_ROOT} "${CMAKE_CURRENT_LIST_DIR}/third_party/onnxruntime-osx-universal2-${onnx_version}")
    else()
        set(ENV{onnxruntime_ROOT} "${CMAKE_CURRENT_LIST_DIR}/third_party/onnxruntime-linux-x64-${onnx_version}")
    endif()
endif()

find_package(onnxruntime 1.10 REQUIRED) # 指定依赖的最小版本
find_package(libpng REQUIRED)

add_library(num_recognizer SHARED src/num_recognizer.cpp)

include(GenerateExportHeader)
generate_export_header(num_recognizer)

set_target_properties(num_recognizer PROPERTIES
    CXX_VISIBILITY_PRESET hidden    # 所有 C++ 符号默认"不导出",包括: 普通类/函数,仅导出显式标记 __attribute__((visibility("default")))和使用导出宏（如 FOO_EXPORT）的函数
    VISIBILITY_INLINES_HIDDEN 1 # inline 函数、模板实例默认不导出
) 

target_include_directories(num_recognizer PUBLIC include ${CMAKE_BINARY_DIR})
target_link_libraries(num_recognizer PRIVATE onnxruntime::onnxruntime png_shared)
target_compile_definitions(num_recognizer PRIVATE ORT_NO_EXCEPTIONS num_recognizer_EXPORTS)

add_executable(recognize cli/recognize.c)
target_link_libraries(recognize PRIVATE num_recognizer)