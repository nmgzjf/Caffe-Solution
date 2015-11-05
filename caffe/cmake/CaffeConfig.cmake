# Config file for the Caffe package.
#
# Note:
#   Caffe and this config file depends on opencv,
#   so put `find_package(OpenCV)` before searching Caffe
#   via `find_package(Caffe)`. All other lib/includes
#   dependencies are hard coded in the file
#
# After successful configuration the following variables
# will be defined:
#
#   Caffe_INCLUDE_DIRS - Caffe include directories
#   Caffe_LIBRARIES    - libraries to link against
#   Caffe_DEFINITIONS  - a list of definitions to pass to compiler
#
#   Caffe_HAVE_CUDA    - signals about CUDA support
#   Caffe_HAVE_CUDNN   - signals about cuDNN support


# OpenCV dependency (optional)

if(ON)
  if(NOT OpenCV_FOUND)
    set(Caffe_OpenCV_CONFIG_PATH "D:/SoftwareDK/OpenCV-3.0.0/build/x64/vc12/staticlib/")
    if(Caffe_OpenCV_CONFIG_PATH)
      get_filename_component(Caffe_OpenCV_CONFIG_PATH ${Caffe_OpenCV_CONFIG_PATH} ABSOLUTE)

      if(EXISTS ${Caffe_OpenCV_CONFIG_PATH} AND NOT TARGET opencv_core)
        message(STATUS "Caffe: using OpenCV config from ${Caffe_OpenCV_CONFIG_PATH}")
        include(${Caffe_OpenCV_CONFIG_PATH}/OpenCVModules.cmake)
      endif()

    else()
      find_package(OpenCV REQUIRED)
    endif()
    unset(Caffe_OpenCV_CONFIG_PATH)
  endif()
endif()

# Compute paths
get_filename_component(Caffe_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(Caffe_INCLUDE_DIRS "D:/SoftwareDK/3rdparty/Boost-1.58.0;D:/SoftwareDK/3rdparty/glog/src/windows;D:/SoftwareDK/3rdparty/gflags/bin/include;D:/SoftwareDK/3rdparty/protobuf/src;D:/SoftwareDK/3rdparty/hdf5/include;D:/SoftwareDK/3rdparty/hdf5/src;D:/SoftwareDK/3rdparty/liblmdb;D:/SoftwareDK/3rdparty/leveldb/include;D:/SoftwareDK/3rdparty/snappy;C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v7.5/include;D:/SoftwareDK/3rdparty/cuda/include;D:/SoftwareDK/OpenCV-3.0.0/build/x64/vc12/staticlib/include;D:/SoftwareDK/OpenCV-3.0.0/build/x64/vc12/staticlib/include/opencv;D:/SoftwareDK/3rdparty/OpenBLAS/include;C:/Users/Jianfeng/Anaconda/include;C:/Users/Jianfeng/Anaconda/Lib/site-packages/numpy/core/include")

get_filename_component(__caffe_include "${Caffe_CMAKE_DIR}/../../include" ABSOLUTE)
list(APPEND Caffe_INCLUDE_DIRS ${__caffe_include})
unset(__caffe_include)


# Our library dependencies
if(NOT TARGET caffe AND NOT caffe_BINARY_DIR)
  include("${Caffe_CMAKE_DIR}/CaffeTargets.cmake")
endif()

# List of IMPORTED libs created by CaffeTargets.cmake
set(Caffe_LIBRARIES caffe)

# Definitions
set(Caffe_DEFINITIONS "-DUSE_OPENCV;-DUSE_LMDB;-DALLOW_LMDB_NOLOCK;-DUSE_LEVELDB")

# Cuda support variables
set(Caffe_CPU_ONLY OFF)
set(Caffe_HAVE_CUDA TRUE)
set(Caffe_HAVE_CUDNN TRUE)
