CMAKE_MINIMUM_REQUIRED(VERSION 2.8)
PROJECT(OIS)

INCLUDE_DIRECTORIES(includes)

FILE(GLOB ois_headers headers/*.h)
FILE(GLOB ois_files src/*.cpp)
FILE(GLOB ois_files_android src/android/*.cpp)
FILE(GLOB ois_files_linux src/linux/*.cpp)

#not neccessary to install header files for specific environment
if (ANDROID)
  ADD_LIBRARY (OIS ${ois_files} ${ois_files_android})
  install(FILES includes/android/AndroidInputManager.h DESTINATION include/OIS/android/)
  #install(FILES includes/android/OISLog.h DESTINATION include/OIS)
elseif(UNIX)
  ADD_LIBRARY (OIS ${ois_files} ${ois_files_linux})
  #FILE(GLOB ois_header_linux includes/linux/*.h)
  #install(FILES ${ois_header_linux} DESTINATION include/OIS/linux/)
endif()


install(TARGETS OIS ARCHIVE DESTINATION lib)
install(FILES includes/OIS.h DESTINATION include/OIS)
#install(FILES includes/OIS.h DESTINATION include)
install(FILES includes/OISConfig.h DESTINATION include/OIS)
install(FILES includes/OISEffect.h DESTINATION include/OIS)
install(FILES includes/OISEvents.h DESTINATION include/OIS)
install(FILES includes/OISException.h DESTINATION include/OIS)
install(FILES includes/OISFactoryCreator.h DESTINATION include/OIS)
install(FILES includes/OISForceFeedback.h DESTINATION include/OIS)
install(FILES includes/OISInputManager.h DESTINATION include/OIS)
install(FILES includes/OISInterface.h DESTINATION include/OIS)
install(FILES includes/OISJoyStick.h DESTINATION include/OIS)
install(FILES includes/OISKeyboard.h DESTINATION include/OIS)
install(FILES includes/OISMouse.h DESTINATION include/OIS)
install(FILES includes/OISMultiTouch.h DESTINATION include/OIS)
install(FILES includes/OISObject.h DESTINATION include/OIS)
install(FILES includes/OISPrereqs.h DESTINATION include/OIS)
install(FILES "CMake/Packages/FindOIS.cmake" DESTINATION lib)





