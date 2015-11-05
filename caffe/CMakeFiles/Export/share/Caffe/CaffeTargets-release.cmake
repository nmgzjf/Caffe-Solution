#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "caffe" for configuration "Release"
set_property(TARGET caffe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(caffe PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/caffe.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "proto;proto;D:/SoftwareDK/3rdparty/Boost-1.58.0/lib64-msvc-12.0/boost_system-vc120-mt-1_58.lib;D:/SoftwareDK/3rdparty/Boost-1.58.0/lib64-msvc-12.0/boost_thread-vc120-mt-1_58.lib;D:/SoftwareDK/3rdparty/glog/x64/Release/libglog.lib;D:/SoftwareDK/3rdparty/gflags/bin/lib/Release/gflags.lib;D:/SoftwareDK/3rdparty/protobuf/cmake/build/Release/libprotobuf.lib;D:/SoftwareDK/3rdparty/hdf5/build/bin/Debug/libhdf5_hl_D.lib;D:/SoftwareDK/3rdparty/liblmdb/x64/Release/lmdb.lib;D:/SoftwareDK/3rdparty/leveldb/build/Release/leveldb.lib;D:/SoftwareDK/3rdparty/snappy/snappy-msvc/x64/Release/snappy.lib;C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v7.5/lib/x64/cudart.lib;C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v7.5/lib/x64/curand.lib;C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v7.5/lib/x64/cublas.lib;D:/SoftwareDK/3rdparty/cuda/lib/x64/cudnn.lib;opencv_core;opencv_highgui;opencv_imgproc;opencv_imgcodecs;D:/SoftwareDK/3rdparty/OpenBLAS/lib/libopenblas.a;C:/Users/Jianfeng/Anaconda/libs/python27.lib;D:/SoftwareDK/3rdparty/Boost-1.58.0/lib64-msvc-12.0/boost_python-vc120-mt-1_58.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/caffe.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS caffe )
list(APPEND _IMPORT_CHECK_FILES_FOR_caffe "${_IMPORT_PREFIX}/lib/caffe.lib" "${_IMPORT_PREFIX}/lib/caffe.dll" )

# Import target "proto" for configuration "Release"
set_property(TARGET proto APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(proto PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/proto.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS proto )
list(APPEND _IMPORT_CHECK_FILES_FOR_proto "${_IMPORT_PREFIX}/lib/proto.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
