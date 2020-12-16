FROM leopoldlll/opencv4
WORKDIR /templateDocker
COPY .  /templateDocker


RUN chmod +x compile.sh
RUN ./compile.sh

RUN chmod +x run.sh
CMD ./run.sh


# To create the container and compile the code:
# docker image build -t random_name .

# To launch the code (only the first line of CMD)
# The ip given is the one of the actual computer
# 	An application is needed to abilitate the GUI from command line. I suggest Xming for windows.
# docker run -e DISPLAY=xxx.yyy.kkk.qqq:0 random_name
