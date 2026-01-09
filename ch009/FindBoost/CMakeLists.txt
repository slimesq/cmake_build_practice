cmake_minimum_required(VERSION 3.20)

cmake_policy(SET CMP0167 OLD)

project(find-boost)

if(WIN32)
    set(BOOST_ROOT "D:\\third_party_library\\boost")
    set(BOOST_NO_SYSTEM_PATHS ON)
elseif()
    # 默认再系统目录查找Boost库,无需设置条件变量
    set(BOOST_ROOT "$ENV{HOME}/boost")  # 取消注释以使用自己构建的Boost库
endif()

find_package(Boost REQUIRED COMPONENTS regex)

add_executable(main "../../ch001/链接Boost/main.cpp")
target_link_libraries(main PRIVATE Boost::regex)