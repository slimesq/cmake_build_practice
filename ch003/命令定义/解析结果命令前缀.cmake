function(abc_f)
    cmake_parse_arguments(abc "ENABLE" "VALUE" "" ${ARGN})
    message("abc_ENBALE: ${abc_ENABLE}")
    message("abc_VALUE: ${abc_VALUE}")
endfunction()

# abc_f(VALUE a)
abc_f(VALUE a ENABLE)
