cmake_minimum_required(VERSION 3.21)

project(cut)


set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)


set(CMAKE_EXPORT_COMPILE_COMMANDS ON)


set(SOURCES
    src2/work.cpp
    src/Elephant.cpp
    src/Lion.cpp
    src/Penguin.cpp
    src/zoo.cpp
)


set(HEADERS
    include/Animal.h
    include/Elephant.h
    include/Lion.h
    include/Penguin.h
    include/zoo.h
)

add_executable(cut ${SOURCES} ${HEADERS})


target_include_directories(cut PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)