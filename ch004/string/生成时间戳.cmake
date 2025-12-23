string(TIMESTAMP res "%Y/%m/%d %H时%M分%S秒")
message("${res}")   # 输出：2025/12/22 18时45分14秒

string(TIMESTAMP res "%Y年%m月%d日 %H:%M:%S UTC" UTC)
message("${res}")   # 输出：2025年12月22日 10:45:14 UTC

string(TIMESTAMP res)
message("${res}")   # 输出：2025-12-22T18:45:14

string(TIMESTAMP res UTC)
message("${res}")   # 输出：2025-12-22T10:45:14Z

# 设置固定的时间
# > $env:SOURCE_DATE_EPOCH=0    # 在Linux Shell中用: export SOURCE_DATE_EPOCH=0
# > cmake -P .\生成时间戳.cmake 
# 1970/01/01 08时00分00秒
# 1970年01月01日 00:00:00 UTC
# 1970-01-01T08:00:00
# 1970-01-01T00:00:00Z