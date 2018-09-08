set(_source "${CMAKE_CURRENT_SOURCE_DIR}/statchemlib")
set(_build "${CMAKE_CURRENT_BINARY_DIR}/statchemlib")

ExternalProject_Add(statchemlib
  SOURCE_DIR ${_source}
  BINARY_DIR ${_build}
  CMAKE_CACHE_ARGS
    ${CANDIY_DEFAULT_ARGS}
    ${CANDIY_THIRDPARTYLIBS_ARGS}
  DEPENDS
    gsl
    openmm
  )

if(FORCE_STEP)
  ExternalProject_Add_Step(statchemlib forcebuild
    COMMAND ${CMAKE_COMMAND} -E echo "Force build of statchemlib"
    ${FORCE_STEP_ARGS}
    ALWAYS 1)
endif()

