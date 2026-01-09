find_program(res NAMES cmake)
message("${res}")   # 输出的值与${CMAKE_COMMAND}一致: D:/wsqAPP/CMake/bin/cmake.exe
message("${CMAKE_COMMAND}")   # 输出: D:/wsqAPP/CMake/bin/cmake.exe