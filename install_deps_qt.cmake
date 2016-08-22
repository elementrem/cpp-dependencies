include("${CMAKE_CURRENT_LIST_DIR}/scripts/helpers.cmake")

set(INSTALL_DIR "${ROOT_DIR}/install")
set(SERVER "https://github.com/elementrem/cpp-dependencies/releases/download/vc140/")

function(download_and_install PACKAGE_NAME)
    download_and_unpack("${SERVER}${PACKAGE_NAME}.tar.gz" ${INSTALL_DIR})
endfunction(download_and_install)


download_and_install("qt-5.6")
