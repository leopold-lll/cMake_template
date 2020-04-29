#include <stdio.h>
#include <opencv2/opencv.hpp>
#include <iostream>

using namespace cv;

// It can be compiled with (opencv4 can be a make file variable i.e. $(OPENCV) ):
//      g++ imgDisplay.cc `pkg-config --cflags opencv4` `pkg-config --libs opencv4`
// An it could run with: ./a.out lena.jpg


// Remember that in order to run a software with GUI on WSL is necessary to activate an "X server"
// One "X server" could be Xming, in addition it need to be activated with the command $export DISPLAY=0:0
// The command can be automatically executed if written in the file "/home/stefano/.bash_profile"

int main(int argc, char** argv){
	std::cout << "Test OpenCV with CMake\n\n\n";

    if ( argc != 2 ){
        printf("usage: DisplayImage.out <Image_Path>\n");
        return -1;
    }
    
    Mat image = imread( argv[1], 1 );

    if ( !image.data ){
        printf("No image data \n");
        return -1;
    }
    
    namedWindow("Display Image", WINDOW_AUTOSIZE );
    imshow("Display Image", image);

    waitKey(0);

    return 0;
}