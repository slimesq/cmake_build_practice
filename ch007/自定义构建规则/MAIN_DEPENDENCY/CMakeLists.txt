add_executable(main main.c)
add_custom_command(OUTPUT main2.c
    COMMAND cp main.c main2.c
    MAIN_DEPENDENCY main.c)