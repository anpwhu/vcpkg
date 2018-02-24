include(FindPackageHandleStandardArgs)

find_path(OPENEXR_INCLUDE_PATHS NAMES ImfRgbaFile.h PATH_SUFFIXES OpenEXR)

find_library(OPENEXR_HALF_LIBRARY NAMES Half)
find_library(OPENEXR_IEX_LIBRARY NAMES Iex-2_2)
find_library(OPENEXR_IMATH_LIBRARY NAMES Imath-2_2)
find_library(OPENEXR_ILMIMF_LIBRARY NAMES IlmImf-2_2)
find_library(OPENEXR_ILMTHREAD_LIBRARY NAMES IlmThread-2_2)

set(OPENEXR_LIBRARIES ${OPENEXR_HALF_LIBRARY} ${OPENEXR_IEX_LIBRARY} ${OPENEXR_IMATH_LIBRARY} ${OPENEXR_ILMIMF_LIBRARY} ${OPENEXR_ILMTHREAD_LIBRARY})

find_package_handle_standard_args(OPENEXR REQUIRED_VARS OPENEXR_LIBRARIES OPENEXR_INCLUDE_PATHS)