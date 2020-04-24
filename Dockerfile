FROM leopoldlll/opencv4

WORKDIR /templateDocker

COPY .  /templateDocker


# RUN mkdir build		#the operation fail if the directory already exists (crash of docker)
RUN chmod +x compile.sh
RUN ./compile.sh

CMD chmod +x run.sh
CMD ./run.sh

# Equivalent to the above two rows.
# NB: CMD can be placed only on one line, if not only the last one is executed
# CMD ./build/buildLinux/cv_executable input/lena.jpg && ./build/buildLinux/main_executable


# To create the container and compile the code:
# docker image build -t template_docker .

# To launch the code (only the first line of CMD)
# The ip given is the one of the actual computer
# 	An application is needed to abilitate the GUI from command line. I suggest Xming for windows.
# docker run -e DISPLAY=192.168.77.241:0 template_docker
