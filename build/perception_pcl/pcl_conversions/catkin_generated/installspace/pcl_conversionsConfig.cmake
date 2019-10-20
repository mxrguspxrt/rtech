# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(pcl_conversions_CONFIG_INCLUDED)
  return()
endif()
set(pcl_conversions_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
set(pcl_conversions_SOURCE_PREFIX )
set(pcl_conversions_DEVEL_PREFIX )
set(pcl_conversions_INSTALL_PREFIX /home/dte/Desktop/rtech/install)
set(pcl_conversions_PREFIX ${pcl_conversions_INSTALL_PREFIX})

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'pcl_conversions' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(pcl_conversions_FOUND_CATKIN_PROJECT TRUE)

if(NOT "include;/usr/include/eigen3;/usr/include/pcl-1.9;/usr/include;/usr/include/vtk-7.1;/usr/include/freetype2;/usr/include/x86_64-linux-gnu;/usr/lib/x86_64-linux-gnu/openmpi/include/openmpi;/usr/lib/x86_64-linux-gnu/openmpi/include;/usr/include/python3.7m;/usr/include/hdf5/openmpi;/usr/include/jsoncpp;/usr/include/libxml2;/usr/include/tcl " STREQUAL " ")
  set(pcl_conversions_INCLUDE_DIRS "")
  set(_include_dirs "include;/usr/include/eigen3;/usr/include/pcl-1.9;/usr/include;/usr/include/vtk-7.1;/usr/include/freetype2;/usr/include/x86_64-linux-gnu;/usr/lib/x86_64-linux-gnu/openmpi/include/openmpi;/usr/lib/x86_64-linux-gnu/openmpi/include;/usr/include/python3.7m;/usr/include/hdf5/openmpi;/usr/include/jsoncpp;/usr/include/libxml2;/usr/include/tcl")
  if(NOT "https://github.com/ros-perception/perception_pcl/issues " STREQUAL " ")
    set(_report "Check the issue tracker 'https://github.com/ros-perception/perception_pcl/issues' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT "http://wiki.ros.org/pcl_conversions " STREQUAL " ")
    set(_report "Check the website 'http://wiki.ros.org/pcl_conversions' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'Paul Bovbel <paul@bovbel.com>, Kentaro Wada <www.kentaro.wada@gmail.com>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    # don't try to guess include dir if we installed into the default
    elseif("/home/dte/Desktop/rtech/install" STREQUAL "/usr")
      continue()
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${pcl_conversions_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'pcl_conversions' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'pcl_conversions' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/dte/Desktop/rtech/install/${idir}'.  ${_report}")
    endif()
    if(NOT "${include}" STREQUAL "/usr/include")
    _list_append_unique(pcl_conversions_INCLUDE_DIRS ${include})
    endif()
  endforeach()
endif()

set(libraries "/usr/lib/x86_64-linux-gnu/libpcl_common.so;/usr/lib/x86_64-linux-gnu/libpcl_octree.so;/usr/lib/x86_64-linux-gnu/libpcl_io.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_thread.so;-lpthread;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_iostreams.so;/usr/lib/x86_64-linux-gnu/libboost_serialization.so;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libboost_atomic.so;/usr/lib/x86_64-linux-gnu/libboost_regex.so;/usr/lib/x86_64-linux-gnu/libvtkChartsCore-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkCommonColor-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkCommonCore-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtksys-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkCommonDataModel-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkCommonMath-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkCommonMisc-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkCommonSystem-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkCommonTransforms-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkCommonExecutionModel-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersGeneral-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkCommonComputationalGeometry-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersCore-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkInfovisCore-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersExtraction-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersStatistics-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkImagingFourier-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkImagingCore-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkalglib-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkRenderingContext2D-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkRenderingCore-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersGeometry-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersSources-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkRenderingFreeType-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libfreetype.so;/usr/lib/x86_64-linux-gnu/libz.so;/usr/lib/x86_64-linux-gnu/libvtkDICOMParser-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkDomainsChemistry-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOLegacy-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOCore-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOXMLParser-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libexpat.so;/usr/lib/x86_64-linux-gnu/libvtkDomainsChemistryOpenGL2-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkRenderingOpenGL2-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOImage-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkmetaio-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libjpeg.so;/usr/lib/x86_64-linux-gnu/libpng.so;/usr/lib/x86_64-linux-gnu/libtiff.so;/usr/lib/x86_64-linux-gnu/libvtkFiltersAMR-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOXML-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkParallelCore-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersFlowPaths-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersGeneric-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersHybrid-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkImagingSources-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersHyperTree-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersImaging-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkImagingGeneral-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersModeling-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersParallel-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersParallelDIY2-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkParallelMPI-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersParallelFlowPaths-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersParallelGeometry-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersParallelImaging-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersParallelMPI-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersParallelStatistics-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersPoints-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersProgrammable-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersPython-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libpython3.7m.so;/usr/lib/x86_64-linux-gnu/libvtkWrappingPython37Core-7.1.so.7.1.1;/usr/lib/libvtkWrappingTools-7.1.a;/usr/lib/x86_64-linux-gnu/libvtkFiltersReebGraph-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersSMP-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersSelection-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersTexture-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkFiltersVerdict-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkverdict-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkGUISupportQt-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkInteractionStyle-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkGUISupportQtSQL-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOSQL-7.1.so.7.1.1;sqlite3;/usr/lib/x86_64-linux-gnu/libvtkGeovisCore-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkInfovisLayout-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkImagingHybrid-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkInteractionWidgets-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkImagingColor-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkRenderingAnnotation-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkRenderingVolume-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkViewsCore-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libproj.so;/usr/lib/x86_64-linux-gnu/libvtkIOAMR-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/hdf5/openmpi/libhdf5.so;/usr/lib/x86_64-linux-gnu/libsz.so;/usr/lib/x86_64-linux-gnu/libdl.so;/usr/lib/x86_64-linux-gnu/libm.so;/usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so;/usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so;/usr/lib/x86_64-linux-gnu/hdf5/openmpi/libhdf5_hl.so;/usr/lib/x86_64-linux-gnu/libvtkIOEnSight-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOExodus-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkexoIIc-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libnetcdf_c++.so;/usr/lib/x86_64-linux-gnu/libnetcdf.so;/usr/lib/x86_64-linux-gnu/libvtkIOExport-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkRenderingGL2PSOpenGL2-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libgl2ps.so;/usr/lib/x86_64-linux-gnu/libvtkIOFFMPEG-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOMovie-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libtheoraenc.so;/usr/lib/x86_64-linux-gnu/libtheoradec.so;/usr/lib/x86_64-linux-gnu/libogg.so;/usr/lib/x86_64-linux-gnu/libvtkIOGDAL-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOGeoJSON-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libjsoncpp.so;/usr/lib/x86_64-linux-gnu/libvtkIOGeometry-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOImport-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOInfovis-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libxml2.so;/usr/lib/x86_64-linux-gnu/libvtkIOLSDyna-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOMINC-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOMPIImage-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOMPIParallel-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOParallel-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIONetCDF-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOMySQL-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOODBC-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOPLY-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOParallelExodus-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOParallelLSDyna-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOParallelNetCDF-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOParallelXML-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOPostgreSQL-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOTecplotTable-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOVPIC-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkVPIC-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOVideo-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkIOXdmf2-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkxdmf2-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkImagingMath-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkImagingMorphological-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkImagingStatistics-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkImagingStencil-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkInfovisBoostGraphAlgorithms-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkInteractionImage-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkLocalExample-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkParallelMPI4Py-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkPythonInterpreter-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkRenderingContextOpenGL2-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkRenderingExternal-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkRenderingFreeTypeFontConfig-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkRenderingImage-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkRenderingLICOpenGL2-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkRenderingLOD-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkRenderingLabel-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkRenderingMatplotlib-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkRenderingParallel-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkRenderingParallelLIC-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkRenderingSceneGraph-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkRenderingVolumeAMR-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkRenderingVolumeOpenGL2-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkTestingGenericBridge-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkTestingIOSQL-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkTestingRendering-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkViewsContext2D-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkViewsGeovis-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkViewsInfovis-7.1.so.7.1.1;/usr/lib/x86_64-linux-gnu/libvtkWrappingJava-7.1.so.7.1.1")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND pcl_conversions_LIBRARIES ${library})
  elseif(${library} MATCHES "^-l")
    list(APPEND pcl_conversions_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND pcl_conversions_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND pcl_conversions_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/dte/Desktop/rtech/install/lib;/home/dte/Desktop/rtech/devel/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(pcl_conversions_LIBRARY_DIRS ${lib_path})
      list(APPEND pcl_conversions_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'pcl_conversions'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND pcl_conversions_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(pcl_conversions_EXPORTED_TARGETS "")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${pcl_conversions_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "pcl_msgs;roscpp;sensor_msgs;std_msgs")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 pcl_conversions_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${pcl_conversions_dep}_FOUND)
      find_package(${pcl_conversions_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${pcl_conversions_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(pcl_conversions_INCLUDE_DIRS ${${pcl_conversions_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(pcl_conversions_LIBRARIES ${pcl_conversions_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${pcl_conversions_dep}_LIBRARIES})
  _list_append_deduplicate(pcl_conversions_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(pcl_conversions_LIBRARIES ${pcl_conversions_LIBRARIES})

  _list_append_unique(pcl_conversions_LIBRARY_DIRS ${${pcl_conversions_dep}_LIBRARY_DIRS})
  list(APPEND pcl_conversions_EXPORTED_TARGETS ${${pcl_conversions_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${pcl_conversions_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
