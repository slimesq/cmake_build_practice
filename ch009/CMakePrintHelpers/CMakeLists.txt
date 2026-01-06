cmake_minimum_required(VERSION 3.20)
project(print-helper VERSION 1.0)
include(CMakePrintHelpers)

cmake_print_properties(DIRECTORIES "." PROPERTIES BINARY_DIR SOURCE_DIR)
# 输出
# -- 
#  Properties for DIRECTORY .:
#    ..BINARY_DIR = "D:/CodeRepository/cmake_build_practice/ch009/CMakePrintHelpers/build"
#    ..SOURCE_DIR = "D:/CodeRepository/cmake_build_practice/ch009/CMakePrintHelpers"

cmake_print_variables(PROJECT_NAME PROJECT_VERSION)
# 输出
# -- PROJECT_NAME="print-helper" ; PROJECT_VERSION="1.0"