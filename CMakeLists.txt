CMAKE_MINIMUM_REQUIRED(VERSION 3.5.1)

PROJECT(tclrmq)

file(GLOB SOURCES "package/*.tcl")
install(FILES ${SOURCES} DESTINATION lib/tclrmq)
