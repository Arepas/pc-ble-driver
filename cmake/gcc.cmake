add_compile_options(
    -Wall
    -Wno-effc++
    -Wno-unknown-pragmas
    -Wno-undef
    -Wno-long-long
    -Wfloat-equal
    -Wpointer-arith
    #-H # Used for debugging header dependencies. See https://docs.freebsd.org/info/gcc/gcc.info.Preprocessor_Options.html
)

add_compile_options(
    -std=c++11
    -Wlogical-op
)

# Skip RPATH
set(CMAKE_SKIP_RPATH TRUE)

if(NOT ${ARCH} STREQUAL not_set)

set(ARCH_FLAGS -m${ARCH_BITS})

    add_compile_options(
        ${ARCH_FLAGS}
    )
set(CMAKE_EXE_LINKER_FLAGS  "${CMAKE_EXE_LINKER_FLAGS} ${ARCH_FLAGS}" )
set(CMAKE_SHARED_LINKER_FLAGS  "${CMAKE_SHARED_LINKER_FLAGS} ${ARCH_FLAGS}" )
set(CMAKE_MODULE_LINKER_FLAGS  "${CMAKE_MODULE_LINKER_FLAGS} ${ARCH_FLAGS}" )
endif()
