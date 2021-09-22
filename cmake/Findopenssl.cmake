find_library( ssl_LIBRARY_SHARED libssl.so libssl.dylib libssl.lib )
find_library( crypto_LIBRARY_SHARED libcrypto.so libcrypto.dylib libcrypto.lib )

find_path( ssl_INCLUDE openssl/ssl.h )

if ( ssl_LIBRARY_SHARED AND crypto_LIBRARY_SHARED )
    set( OPENSSL_FOUND TRUE )

    if ( APPLE AND BUILD_SSL )
        set( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-deprecated-declarations" )
    endif( )

    message( STATUS "Found OpenSSL include at: ${ssl_INCLUDE}" )
    message( STATUS "Found OpenSSL library at: ${ssl_LIBRARY_SHARED}" )
    message( STATUS "Found Crypto library at: ${crypto_LIBRARY_SHARED}" )
else ( )
    message( FATAL_ERROR "Failed to locate OpenSSL dependency." )
endif ( )
