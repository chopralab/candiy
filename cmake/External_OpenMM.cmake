# An external project for OpenMM
set(openmm_source  "${CMAKE_CURRENT_BINARY_DIR}/openmm-src")
set(openmm_install "${CANDIY_INSTALL_PREFIX}")

get_filename_component(_self_dir ${CMAKE_CURRENT_LIST_FILE} PATH)

ExternalProject_Add(openmm
  DOWNLOAD_DIR ${download_dir}
  SOURCE_DIR "${openmm_source}"
  INSTALL_DIR "${openmm_install}"
  URL ${openmm_url}
  URL_MD5 ${openmm_md5}
  CMAKE_ARGS
    -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR>
    -DCMAKE_BUILD_TYPE:STRING=Release
  CMAKE_CACHE_ARGS
    -DOPENMM_BUILD_C_AND_FORTRAN_WRAPPERS:Bool=off
    -DOPENMM_BUILD_PYTHON_WRAPPERS:Bool=off
    -DOPENMM_BUILD_EXAMPLES:Bool=off
    -DOPENMM_BUILD_TESTS:Bool=off
    -DOPENMM_BUILD_REFERENCE_TESTS:Bool=off
    -DOPENMM_BUILD_AMOEBA_PLUGIN:Bool=off
    -DOPENMM_BUILD_RPMD_PLUGIN:Bool=off
    -DOPENMM_BUILD_DRUDE_PLUGIN:Bool=off
    -DOPENMM_BUILD_PME_PLUGIN:Bool=off
    -DBUILD_TESTING:BOOL=OFF
)
