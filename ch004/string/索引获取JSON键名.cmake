set(json [=[{
    "a" : {
        "b":0,
        "c":{}
    },
    "d":{}
}]=])

string(JSON res MEMBER ${json} 0)
message("${res}")   #输出: a

string(JSON res MEMBER ${json} 1)
message("${res}")   #输出: d

string(JSON res MEMBER ${json} a 1)
message("${res}")   #输出: c

string(JSON res MEMBER ${json} a b 0)
# CMake Error at 索引获取JSON键名.cmake:18 (string):
#   string sub-command JSON MEMBER needs to be called with an element of type
#   OBJECT, got NUMBER.

