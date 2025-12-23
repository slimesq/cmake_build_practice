set(json [=[{
    "a": {
        "b": ["x","y","z"],
        "c": true,
        "d": null
    }
}]=])

string(JSON res ERROR_VARIABLE err GET ${json} a b)
message("a.b=${res}")   #输出: 

string(JSON res ERROR_VARIABLE err GET ${json} a b 1)
message("a.b=${res}")   #输出: 

string(JSON res ERROR_VARIABLE err GET ${json} a c)
message("a.c=${res}")   #输出: 

string(JSON res ERROR_VARIABLE err GET ${json} a d)
message("a.d=${res}")   #输出: 

string(JSON res ERROR_VARIABLE err GET ${json} a e)
message("a.e=${res}, ${err}")   #输出: 

#string(JSON res GET ${json} a e)
#输出: CMake Error at 获取JSON元素值.cmake:24 (string):
#  string sub-command JSON member 'a e' not found.