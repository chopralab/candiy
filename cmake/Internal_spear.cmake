set(_source "${CMAKE_CURRENT_SOURCE_DIR}/spear")
set(_build "${CMAKE_CURRENT_BINARY_DIR}/spear")

ExternalProject_Add(spear
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
    openmm
    pugixml
)

if(FORCE_STEP)
  ExternalProject_Add_Step(spear forcebuild
    COMMAND ${CMAKE_COMMAND} -E echo "Force build of spear"
    ${FORCE_STEP_ARGS}
    ALWAYS 1)
endif()
