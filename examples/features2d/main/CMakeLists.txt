idf_component_register(SRCS "main.c" "test_opencv.cpp"
                    INCLUDE_DIRS "."
                    REQUIRES opencvlib  esp32-camera)
