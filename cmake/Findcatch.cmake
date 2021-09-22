find_path( catch_INCLUDE catch2/catch.hpp )
if ( catch_INCLUDE )
    set( catch_INCLUDE ${catch_INCLUDE}/catch2 )
endif ( )

include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(catch DEFAULT_MSG catch_INCLUDE)
