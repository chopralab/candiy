set(_source "${CMAKE_CURRENT_SOURCE_DIR}/candock")
set(_build "${CMAKE_CURRENT_BINARY_DIR}/candock")

ExternalProject_Add(candock
  SOURCE_DIR ${_source}
  BINARY_DIR ${_build}
  CMAKE_ARGS
    -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
    -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
  CMAKE_CACHE_ARGS
    ${CANDIY_DEFAULT_ARGS}
    ${CANDIY_THIRDPARTYLIBS_ARGS}
  DEPENDS
    statchemlib
  )

if(FORCE_STEP)
  ExternalProject_Add_Step(candock forcebuild
    COMMAND ${CMAKE_COMMAND} -E echo "Force build of candock"
    ${FORCE_STEP_ARGS}
    ALWAYS 1)
endif()
