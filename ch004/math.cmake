math(EXPR a 10*10 OUTPUT_FORMAT DECIMAL) # a = 100
message("\${a} = ${a}")

math(EXPR b "0x7FFFFFFFFFFFFFFF + 0x7FFFFFFFFFFFFFFF") # b = -2 (oxFFFFFFFFFFFFFFFE)
message("\${b} = ${b}")

math(EXPR c "16" OUTPUT_FORMAT HEXADECIMAL) # c = 0x10
message("\${c} = ${c}")

math(EXPR d "~16" OUTPUT_FORMAT HEXADECIMAL) # d = 0xffffffffffffffef
message("\${d} = ${d}")

# math(EXPR err "0xFFFFFFFFFFFFFFFFF")    # err