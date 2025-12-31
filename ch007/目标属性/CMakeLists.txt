cmake_minimum_required(VERSION 3.20)

project(target_property)

add_executable(main main.c)

# 设置main的目标属性
set_target_properties(main PROPERTIES

    # 构建要求: 将include 加入头文件所有目录
    INCLUDE_DIRECTORIES ${CMAKE_CURRENT_SOURCE_DIR}/include

    # 构建要求: 链接a库(即传递a库的使用要求到main中作为main的构建要求)
    LINK_LIBRARIES a    # 因为 CMake 在 configure 阶段只记录 target 依赖关系，真正解析与校验发生在 generate 阶段，只要最终 target a 被定义即可:add_subdirectory(liba) 写在后面仍然生效
)

add_subdirectory(liba) 