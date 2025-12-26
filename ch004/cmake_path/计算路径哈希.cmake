set(path ./a/)
cmake_path(HASH path res)
message("${res}")   # 输出: abeac3820dd0de78

set(path ./a/b/..)
cmake_path(HASH path res)
message("${res}")   # 输出: abeac3820dd0de78

set(path a/)
cmake_path(HASH path res)
message("${res}")   # 输出: abeac3820dd0de78