# Install script for directory: D:/SoftwareDK/Caffe-Windows/python

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "D:/SoftwareDK/Caffe-Windows/caffe/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/python" TYPE FILE FILES
    "D:/SoftwareDK/Caffe-Windows/python/classify.py"
    "D:/SoftwareDK/Caffe-Windows/python/detect.py"
    "D:/SoftwareDK/Caffe-Windows/python/draw_net.py"
    "D:/SoftwareDK/Caffe-Windows/python/requirements.txt"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/python/caffe" TYPE FILE FILES
    "D:/SoftwareDK/Caffe-Windows/python/caffe/classifier.py"
    "D:/SoftwareDK/Caffe-Windows/python/caffe/detector.py"
    "D:/SoftwareDK/Caffe-Windows/python/caffe/draw.py"
    "D:/SoftwareDK/Caffe-Windows/python/caffe/io.py"
    "D:/SoftwareDK/Caffe-Windows/python/caffe/net_spec.py"
    "D:/SoftwareDK/Caffe-Windows/python/caffe/pycaffe.py"
    "D:/SoftwareDK/Caffe-Windows/python/caffe/__init__.py"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/python/caffe" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/SoftwareDK/Caffe-Windows/caffe/lib/Debug/_caffe-d.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/python/caffe" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/SoftwareDK/Caffe-Windows/caffe/lib/Release/_caffe.lib")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/python/caffe" TYPE SHARED_LIBRARY FILES "D:/SoftwareDK/Caffe-Windows/caffe/bin/Debug/_caffe-d.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/python/caffe" TYPE SHARED_LIBRARY FILES "D:/SoftwareDK/Caffe-Windows/caffe/bin/Release/_caffe.dll")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/python/caffe" TYPE DIRECTORY FILES
    "D:/SoftwareDK/Caffe-Windows/python/caffe/imagenet"
    "D:/SoftwareDK/Caffe-Windows/python/caffe/proto"
    "D:/SoftwareDK/Caffe-Windows/python/caffe/test"
    )
endif()

