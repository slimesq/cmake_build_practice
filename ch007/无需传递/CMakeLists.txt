cmake_minimum_required(VERSION 3.20)

project(no-transition)

add_library(A STATIC "../../ch001/无需传递/liba/a.cpp") 
target_include_directories(A PUBLIC "../../ch001/无需传递/liba") 

add_library(B STATIC "../../ch001/无需传递/libb/b.cpp") 
target_include_directories(B PUBLIC "../../ch001/无需传递/libb") 
target_link_libraries(B PUBLIC A) 

add_executable(main "../../ch001/间接引用/main.cpp")
target_link_libraries(main PRIVATE B)