cmake_minimum_required(VERSION 3.20)

project(genex_eval)

add_executable(main main.c)

# 设置main的自定义目标属性CUSTOM_EXP的值
set_property(TARGET main PROPERTY CUSTOM_EXP "$<CONFIG>")
set_property(TARGET main PROPERTY EXP1
    "$<$<CONFIG:Debug>:-DDEBUG>"
)
set_property(TARGET main PROPERTY EXP2
    "$<TARGET_PROPERTY:main,EXP1>"
)


add_custom_target(debug-gen-exp ALL
    COMMAND ${CMAKE_COMMAND} -E echo "$<TARGET_PROPERTY:main,CUSTOM_EXP>" #输出: $<CONFIG>
    COMMAND ${CMAKE_COMMAND} -E echo "$<GENEX_EVAL:$<TARGET_PROPERTY:main,CUSTOM_EXP>>" # 输出:Debug/Release
    COMMAND ${CMAKE_COMMAND} -E echo "$<GENEX_EVAL:$<TARGET_PROPERTY:main,EXP2>>" # 输出:$<$<CONFIG:Debug>:-DDEBUG> 
    VERBATIM)


