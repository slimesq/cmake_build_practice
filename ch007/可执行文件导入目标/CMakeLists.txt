cmake_minimum_required(VERSION 3.20)

project(import-notepad)

add_executable(notepad_exe IMPORTED)
set_target_properties(notepad_exe PROPERTIES
    IMPORTED_LOCATION "D:\\wsqAPP\\nodePad++\\Notepad++\\notepad++.exe")

add_custom_target(run-notepad ALL notepad_exe ${CMAKE_CURRENT_LIST_FILE})