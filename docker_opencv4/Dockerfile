# This docker file aims to create a container with opencv installed.
# Warning: I hope that these commands work but I do not guarantee them, a minor error may occours...

FROM ubuntu

WORKDIR /

# install requirements
RUN apt update
RUN apt install -y build-essential cmake git geany pkg-config libgtk-3-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libxvidcore-dev libx264-dev libjpeg-dev libpng-dev libtiff-dev gfortran openexr libatlas-base-dev python3-dev python3-numpy libtbb2 libtbb-dev libdc1394-22-dev

# download latest opencv (now 4)
RUN mkdir ~/opencv_build
RUN cd ~/opencv_build && git clone https://github.com/opencv/opencv.git
RUN cd ~/opencv_build && git clone https://github.com/opencv/opencv_contrib.git

# run CMake
RUN cd ~/opencv_build/opencv && mkdir build
RUN cd ~/opencv_build/opencv/build && cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D OPENCV_GENERATE_PKGCONFIG=ON -D OPENCV_EXTRA_MODULES_PATH=~/opencv_build/opencv_contrib/modules -D BUILD_EXAMPLES=ON ..

# run Make 
# with the number of process of the machine (now 4)
RUN cd ~/opencv_build/opencv/build && make -j`nproc` && make install

# remove the now useless files
RUN rm -rf ~/opencv_build

