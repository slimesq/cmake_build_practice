# CMAKE_MODULE_PATH用于指定,find_package的查找目录,若没有查到则到CMake安装目录下查找
set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR};${CMAKE_MODULE_PATH}")
find_package(Custom 2.1...<2.3 REQUIRED COMPONENTS a)