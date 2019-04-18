set(_source "${CMAKE_CURRENT_SOURCE_DIR}/starmix")
set(_build "${CMAKE_CURRENT_BINARY_DIR}/starmix")

ExternalProject_Add(starmix
  SOURCE_DIR ${_source}
  BINARY_DIR ${_build}
  CMAKE_ARGS
    -DSPEAR_BUILD_CHEMFILES=OFF
    -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR>
    -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
    -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
  CMAKE_CACHE_ARGS
    ${CANDIY_DEFAULT_ARGS}
    ${CANDIY_THIRDPARTYLIBS_ARGS}
  DEPENDS
    chemfiles
    lemon
    spear
)

if(FORCE_STEP)
  ExternalProject_Add_Step(starmix forcebuild
    COMMAND ${CMAKE_COMMAND} -E echo "Force build of starmix"
    ${FORCE_STEP_ARGS}
    ALWAYS 1)
endif()
