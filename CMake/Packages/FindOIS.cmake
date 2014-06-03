
MESSAGE(STATUS "Searching for OIS library...")

FIND_PATH(OIS_INCLUDE_DIR OIS/OIS.h)
FIND_LIBRARY(OIS_LIBRARY NAMES OIS)


IF (OIS_INCLUDE_DIR AND OIS_LIBRARY)
   SET(OIS_FOUND TRUE)
 ENDIF (OIS_INCLUDE_DIR AND OIS_LIBRARY)

IF (OIS_FOUND)

#if (cpp-commons_FOUND)
#  include_directories(${cpp-commons_INCLUDE_DIRS})
#  target_link_libraries (steering-behaviors ${cpp-commons_LIBRARIES})
#endif (cpp-commons_FOUND)

   # show which OIS was found only if not quiet
   IF (NOT OIS_FIND_QUIETLY)
      MESSAGE(STATUS "Found OIS: ${OIS_LIBRARY}")
      MESSAGE(STATUS "Found OIS: ${OIS_INCLUDE_DIR}")
      #include_directories(${OIS_INCLUDE_DIR})
      #target_link_libraries(steering-behaviors ${OIS_INCLUDE_DIR})
   ENDIF (NOT OIS_FIND_QUIETLY)

ELSE (OIS_FOUND)

   # fatal error if OIS is required but not found
   IF (OIS_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Could not find OIS")
   ENDIF (OIS_FIND_REQUIRED)

ENDIF (OIS_FOUND)
