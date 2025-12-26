file(TIMESTAMP example.txt res)
message("${res}")   # 输出:2025-12-23T17:58:01

file(TIMESTAMP example.txt res "%Y年%m月%d日 %H:%M:%S UTC" UTC)
message("${res}")   # 输出:2025年12月23日 09:58:01 UTC