find_package(OpenCV REQUIRED)


add_library(calculator SHARED calculator.cpp)
target_link_libraries(calculator PUBLIC ${OpenCV_LIBS})
target_include_directories(calculator INTERFACE ${CMAKE_CURRENT_LIST_DIR})


