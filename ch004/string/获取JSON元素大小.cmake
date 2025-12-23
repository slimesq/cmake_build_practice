set(json [=[{
    "a":{
        "x": 0,
        "y": {}
    },
    "b": [0,1,2,3,4],
    "c": "cmake"
}]=])

string(JSON res LENGTH ${json})
message("${res}")   #输出: 3

string(JSON res LENGTH ${json} a)
message("${res}")   #输出: 2

string(JSON res LENGTH ${json} b)
message("${res}")   #输出: 5

#string(JSON res LENGTH ${json} c)
#输出
#CMake Error at 获取JSON元素大小.cmake:19 (string):
#  string sub-command JSON LENGTH needs to be called with an element of type
#  ARRAY or OBJECT, got STRING.