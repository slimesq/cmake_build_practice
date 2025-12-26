file(COPY 复制文件 DESTINATION 复制目标/1 
    FILES_MATCHING 
    PATTERN *.txt)

file(COPY 复制文件 DESTINATION 复制目标/2 
    REGEX /[0-9]+.txt$ EXCLUDE)

file(COPY 复制文件 DESTINATION 复制目标/3
    FILES_MATCHING 
    PATTERN *.jpg
    REGEX /[0-9].txt$)

# 复制目标
# |--1
# │  |-─复制文件
# |       |-- 1.txt
# |       |-- 10.txt
# |--2
# │  |-─复制文件
# |       |-- 2.csv
# |       |-- 3.jpg
# |--3
# │  |-─复制文件
# |       |-- 1.txt
# |       |-- 3.jpg
