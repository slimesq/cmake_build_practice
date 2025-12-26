execute_process(
    COMMAND ${CMAKE_COMMAND} -Dtext=hello -P 输出普通变量.cmake
    COMMAND ${CMAKE_COMMAND} -Dtext=world -P 输出普通变量.cmake
    COMMAND ${CMAKE_COMMAND} -E echo hello
    COMMAND ${CMAKE_COMMAND} -E echo world
    COMMAND_ECHO STDOUT
)
# 输出:
# 'D:/wsqAPP/CMake/bin/cmake.exe' '-Dtext=hello' '-P' '输出普通变量.cmake'
# 'D:/wsqAPP/CMake/bin/cmake.exe' '-Dtext=world' '-P' '输出普通变量.cmake'
# 'D:/wsqAPP/CMake/bin/cmake.exe' '-E' 'echo' 'hello'
# 'D:/wsqAPP/CMake/bin/cmake.exe' '-E' 'echo' 'world'
# hello
# world
# world