#设置目录属性COMPILE_DEFINITIONS的值为DIR="a"
set_directory_properties(PROPERTIES COMPILE_DEFINITIONS DIR="b")
add_executable(b ../main.c)