cmake_minimum_required(VERSION 3.20)

macro(my_macro p)
    message("-- my_macro --")

    if(p)  
        message("p为真 ${p}")        # 由于宏是直接替换的(${p} --> ON),此处没有触发替换   
    endif()

    set(i 1)
    message("ARGV i: ${ARGV${i}}")  #直接替换(${ARGV1} --> x),此处在替换的时候没有ARGV1,ARGV1是在运行的时候产生的。
endmacro()

function(my_func p)
    message("-- my_func --")

    if(p)
        message("p为真")
    endif()

    set(i 1)
    message("ARGV i: ${ARGV${i}}")
endfunction()

my_macro(ON x)
my_func(ON x)
