set(_source "${CMAKE_CURRENT_SOURCE_DIR}/starmix")
set(_build "${CMAKE_CURRENT_BINARY_DIR}/starmix")

message(STATUS ${CANDIY_THIRDPARTYLIBS_ARGS})

ExternalProject_Add(starmix
  SOURCE_DIR ${_source}
  BINARY_DIR ${_build}
  CMAKE_ARGS
    -DSPEAR_BUILD_CHEMFILES=OFF
  CMAKE_CACHE_ARGS
    ${CANDIY_DEFAULT_ARGS}
    ${CANDIY_THIRDPARTYLIBS_ARGS}
  DEPENDS
    chemfiles
    lemon
)

if(FORCE_STEP)
  ExternalProject_Add_Step(starmix forcebuild
    COMMAND ${CMAKE_COMMAND} -E echo "Force build of starmix"
    ${FORCE_STEP_ARGS}
    ALWAYS 1)
endif()
