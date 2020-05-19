set(COMPONENT_SRCS "main.c" "cv_object_tracking.cpp")
set(COMPONENT_ADD_INCLUDEDIRS "")

register_component()

# include libraries here...

add_prebuilt_library(opencv_calib3d "../../../install/lib/libopencv_calib3d.a")
add_prebuilt_library(opencv_features2d "../../../install/lib/libopencv_features2d.a")
add_prebuilt_library(opencv_flann "../../../install/lib/libopencv_flann.a")
add_prebuilt_library(opencv_highgui "../../../install/lib/libopencv_highgui.a")
add_prebuilt_library(opencv_imgcodecs "../../../install/lib/libopencv_imgcodecs.a")
add_prebuilt_library(opencv_imgproc "../../../install/lib/libopencv_imgproc.a")
add_prebuilt_library(opencv_ml "../../../install/lib/libopencv_ml.a")
add_prebuilt_library(opencv_objdetect "../../../install/lib/libopencv_objdetect.a")
add_prebuilt_library(opencv_photo "../../../install/lib/libopencv_photo.a")
add_prebuilt_library(opencv_stitching "../../../install/lib/libopencv_stitching.a")
add_prebuilt_library(opencv_video "../../../install/lib/libopencv_video.a")
add_prebuilt_library(opencv_core "../../../install/lib/libopencv_core.a")
add_prebuilt_library(opencv_tracking "../../../install/lib/libopencv_tracking.a")

add_prebuilt_library(IlmImf "../../../install/lib/opencv4/3rdparty/libIlmImf.a")
add_prebuilt_library(libjasper "../../../install/lib/opencv4/3rdparty/liblibjasper.a")
add_prebuilt_library(libjpeg-turbo "../../../install/lib/opencv4/3rdparty/liblibjpeg-turbo.a")
add_prebuilt_library(libpng "../../../install/lib/opencv4/3rdparty/liblibpng.a")
add_prebuilt_library(libtiff "../../../install/lib/opencv4/3rdparty/liblibtiff.a")
add_prebuilt_library(libwebp "../../../install/lib/opencv4/3rdparty/liblibwebp.a")
add_prebuilt_library(quirc "../../../install/lib/opencv4/3rdparty/libquirc.a")
add_prebuilt_library(zlib "../../../install/lib/opencv4/3rdparty/libzlib.a")

target_link_libraries(${COMPONENT_LIB} 
PUBLIC
opencv_tracking
opencv_features2d opencv_calib3d opencv_flann opencv_imgcodecs 
opencv_imgproc opencv_ml opencv_objdetect opencv_photo opencv_stitching opencv_video opencv_core zlib  IlmImf libjasper libjpeg-turbo libpng libtiff libwebp quirc)

