set(VIKIT_APPLE_BUNDLE_NAME "VIKIT")
set(VIKIT_APPLE_BUNDLE_ID "org.VIKIT")

if(IOS)
  if (APPLE_FRAMEWORK AND BUILD_SHARED_LIBS)
    configure_file("${CMAKE_CURRENT_SOURCE_DIR}/IOS/Info.Dynamic.plist.in"
                   "${CMAKE_BINARY_DIR}/ios/Info.plist")
  else()
    configure_file("${CMAKE_CURRENT_SOURCE_DIR}/IOS/Info.plist.in"
                   "${CMAKE_BINARY_DIR}/ios/Info.plist")
  endif()
endif()
