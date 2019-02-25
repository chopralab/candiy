# An external project for GSL
set(gsl_source  "${CMAKE_CURRENT_BINARY_DIR}/gsl-src")
set(gsl_install "${CANDIY_INSTALL_PREFIX}")

get_filename_component(_self_dir ${CMAKE_CURRENT_LIST_FILE} PATH)

ExternalProject_Add(gsl
  DOWNLOAD_DIR ${download_dir}
  SOURCE_DIR "${gsl_source}"
  INSTALL_DIR "${gsl_install}"
  URL ${gsl_url}
  URL_MD5 ${gsl_md5}
  CMAKE_ARGS
    -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR>
    -DCMAKE_BUILD_TYPE:STRING=Release
  CMAKE_CACHE_ARGS
    -DGSL_DISABLE_TESTS:BOOL=ON
    -DGSL_DISABLE_WARNINGS:BOOL=ON
    -DBUILD_SHARED_LIBS:BOOL=${BUILD_SHARED_LIBS}
)

