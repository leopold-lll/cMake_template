#include "cvUtils.hh"

void showImage(std::string filename) {
    std::cout << "\tShowing image...\n";
    Mat image = imread(filename, 1);

    if (!image.data) {
        printf("No image data \n");
    } else {
        namedWindow("Display Image", WINDOW_AUTOSIZE);
        imshow("Display Image", image);

        waitKey(0);
    }
}