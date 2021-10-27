cmake_minimum_required(VERSION 3.0.2)
project(cartographer_audi_a2d2)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


find_package(catkin REQUIRED COMPONENTS ${PACKAGE_DEPENDENCIES})
catkin_package(
        CATKIN_DEPENDS
        INCLUDE_DIRS "."
)



install(DIRECTORY launch urdf configuration_files
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
