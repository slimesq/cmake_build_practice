cmake_minimum_required(VERSION 3.20)
project(find-library)

# 使用tree .查看当前目录的树形结构
# ├─dir1
# |- b.lib
# |- libb.a
# └─dir2
# |- a.lib
# |- liba.a

# 注意,在不同平台的输出结果不同
find_library(res1 NAMES a b HINTS dir1 dir2)
message("${res1}") # 输出: find_library/dir2/a.lib 或 liba.a

find_library(res2 NAMES a b NAMES_PER_DIR HINTS dir1 dir2)
message("${res2}") # 输出: find_library/dir1/b.lib 或 libb.a
