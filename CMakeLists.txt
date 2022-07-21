cmake_minimum_required(VERSION 3.12)
project(sc_first VERSION 1.0.0 LANGUAGES C CXX)

set (CMAKE_CXX_STANDARD 14 CACHE STRING
     "C++ standard to build all targets. Supported values are 98, 11, and 14.")

set(SYSC_LIB_DIR
  systemc-2.3.3-built/lib)

file(GLOB_RECURSE ALL_SRC
  src/*.cc)

include_directories(systemc-2.3.3-built/include)
link_directories(${SYSC_LIB_DIR})
add_executable(${PROJECT_NAME} ${ALL_SRC})
target_link_libraries(${PROJECT_NAME} systemc)
