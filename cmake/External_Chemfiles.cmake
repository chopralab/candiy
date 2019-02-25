# An external project for Chemfiles
set(chfl_source  "${CMAKE_CURRENT_BINARY_DIR}/chfl-src")
set(chfl_install "${CANDIY_INSTALL_PREFIX}")

ExternalProject_Add( chemfiles
    GIT_REPOSITORY ${chfl_git_url}
    GIT_TAG ${chfl_git_branch}
    SOURCE_DIR ${chfl_source}
    INSTALL_DIR ${chfl_install}
    CMAKE_ARGS
        -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR>
        -DCMAKE_BUILD_TYPE:STRING=Release
    CMAKE_CACHE_ARGS
        -DBUILD_SHARED_LIBS:BOOL=${BUILD_SHARED_LIBS}
        -DCMAKE_BUILD_TYPE:STRING=Release
        -DCMAKE_POSITION_INDEPENDENT_CODE:BOOL=ON
)
