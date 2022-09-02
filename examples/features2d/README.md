# Feature2d example for IDF OpenCV component

This example shows how to use OpenCV in ESP-IDF projects.

This example requires esp32-eye or esp32-s3-eye development boards. The example use opencv library to extract 
2D features from the image and compute the feature descriptors.
To run the example on esp32-eye target please run:

```
idf.py -p PORT flash monitor
```

To execute the example on esp32-s3-eye board, rename `sdkconfig.defaults.esp32s3` file to `sdkconfig.defaults` and run:

```
idf.py -p PORT flash monitor
```
