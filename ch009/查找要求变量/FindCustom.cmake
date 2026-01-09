message("${CMAKE_FIND_PACKAGE_NAME}")   # 输出: Custom
message("${Custom_FIND_REQUIRED}")  # 输出: 1
message("${Custom_FIND_VERSION_COMPLETE}")  # 输出: 2.1...<2.3
message("${Custom_FIND_VERSION}") # 输出: 2.1
message("${Custom_FIND_VERSION_COUNT}") # 输出: 2
message("${Custom_FIND_VERSION_RANGE_MAX}") # 输出: EXCLUDE
message("${Custom_FIND_VERSION_MIN}")   # 输出: 2.1
message("${Custom_FIND_VERSION_MAX}")   # 输出: 2.3
message("${Custom_FIND_COMPONENTS}")    # 输出: a

include(FindPackageHandleStandardArgs)

# 检测失败
# find_package_check_version(1.2.0 res HANDLE_VERSION_RANGE RESULT_MESSAGE_VARIABLE msg)
# if(res)
#     message(STATUS "${msg}")
# else()
#     message(FATAL_ERROR "${msg}")
# endif()

find_package_check_version(2.2.0 res HANDLE_VERSION_RANGE RESULT_MESSAGE_VARIABLE msg)
if(res)
    message(STATUS "${msg}")
else()
    message(FATAL_ERROR "${msg}")
endif()