cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

project(project2 C Fortran)

if(CMAKE_VERSION VERSION_LESS 3.31.4)
  # CMake 3.31.0 through 3.31.3 hard-coded this flag.
  # It does not work with modules, so remove it.
  string(REPLACE "--generate-object-code" "" CMAKE_Fortran_COMPILE_OBJECT "${CMAKE_Fortran_COMPILE_OBJECT}")
endif()

add_executable(doconcurrent
    doconcurrent.f90
)
