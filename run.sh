#!/bin/bash
Xephyr :1 -ac -br -screen 1024x768 -resizeable -reset -terminate &
docker-compose build
docker-compose up
#docker-compose down
#docker run -it -e DISPLAY=:1 --device /dev/snd -v /tmp/.X11-unix:/tmp/.X11-unix
