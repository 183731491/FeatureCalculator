cmake_minimum_required(VERSION 3.20)
project(FeatureCalculator VERSION 1.2.3 LANGUAGES CXX)



set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")
include(add_git_submodule)
add_git_submodule(third_party/json)
add_git_submodule(third_party/spdlog)



add_subdirectory(calculator)

add_executable(main main.cpp)
target_link_libraries(main PRIVATE calculator)

