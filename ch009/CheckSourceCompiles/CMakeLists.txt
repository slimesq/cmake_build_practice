cmake_minimum_required(VERSION 3.20)
project(check-source-compile)
include(CheckSourceCompiles)

check_source_compiles(C "int main(){return 0;}" res)    # 输出:
# -- Performing Test res
# -- Performing Test res - Success
message("${res}")   #输出：1

set(CMAKE_REQUIRE_QUIET TRUE)
check_source_compiles(C "invalid code" res2) #输出
# -- Performing Test res2
# -- Performing Test res2 - Failed
message("${res2}")   #输出空值

check_source_compiles(C "invalid code" res)  # ==> 由于上一步res被设置为1,是一个缓存变量(要求每个check_source_compiles的结果变量名称不同),这个命令没有被执行
# -- Performing Test res2
# -- Performing Test res2 - Failed
message("${res}")   #输出: 1 