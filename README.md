This project shows how to include OpenCV library into the esp-idf.
The project has next folders:
- opencv - OpenCV source code directory, added as git submodule
- opencv_contrib - additional modules for OpenCV, added as git submodule
- cmake - directory with cmake scripts for building projects with opencv
- examples - directory with opencv examples running on Esp32-cam board.

First of all the OpenCV has to be build. For that, from the esp-edf console please run:
./build.sh
This will build the opencv binaries and place them to the install directory.

The examples:
- feature2d - extraction of 2d features form the camera image.
- motion_detection - example detect the motion on the picture from camera and print the coordinates of the object to the console.
- object_tracking - track the object located on center of the camera.
- people_detection - the example has to detect people on the image.
- text_area_detection - detect area on the image where text expected.