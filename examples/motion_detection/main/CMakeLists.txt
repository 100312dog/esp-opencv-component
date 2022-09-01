idf_component_register(SRCS "main.c" "cv_motion_detection.cpp"
                    INCLUDE_DIRS "."
                    REQUIRES opencvlib esp32-camera)
