execute_process(
    COMMAND ${CMAKE_COMMAND} -E echo hello
    COMMAND ${CMAKE_COMMAND} -E xxx # 不合法的参数
    RESULTS_VARIABLE res
)
# 输出:
# CMake Error: cmake version 3.30.0
# Usage: D:/wsqAPP/CMake/bin/cmake.exe -E <command> [arguments...]
# ...

message("${res}") # 输出: 0;1
