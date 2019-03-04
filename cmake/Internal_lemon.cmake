set(_source "${CMAKE_CURRENT_SOURCE_DIR}/lemon")
set(_build "${CMAKE_CURRENT_BINARY_DIR}/lemon")

ExternalProject_Add(lemon
  SOURCE_DIR ${_source}
  BINARY_DIR ${_build}
  CMAKE_ARGS
    -DLEMON_EXTERNAL_CHEMFILES:BOOL=ON
  CMAKE_CACHE_ARGS
    ${CANDIY_DEFAULT_ARGS}
    ${CANDIY_THIRDPARTYLIBS_ARGS}
  DEPENDS
    chemfiles
)

if(FORCE_STEP)
  ExternalProject_Add_Step(lemon forcebuild
    COMMAND ${CMAKE_COMMAND} -E echo "Force build of lemon"
    ${FORCE_STEP_ARGS}
    ALWAYS 1)
endif()
