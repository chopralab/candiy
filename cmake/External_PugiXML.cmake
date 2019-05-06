# An external project for GSL
set(pugi_source  "${CMAKE_CURRENT_BINARY_DIR}/pugi-src")
set(pugi_install "${CANDIY_INSTALL_PREFIX}")

get_filename_component(_self_dir ${CMAKE_CURRENT_LIST_FILE} PATH)

ExternalProject_Add(pugixml
  DOWNLOAD_DIR ${download_dir}
  SOURCE_DIR "${pugi_source}"
  INSTALL_DIR "${pugi_install}"
  URL ${pugi_url}
  URL_MD5 ${pgui_md5}
  CMAKE_ARGS
    -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR>
    -DCMAKE_BUILD_TYPE:STRING=Release
    -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
    -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
    -DCMAKE_POSITION_INDEPENDENT_CODE:BOOL=ON
)
