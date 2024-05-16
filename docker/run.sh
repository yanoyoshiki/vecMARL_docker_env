docker run \
 --net=host \
 --gpus all \
 -v $HOME/.Xauthority:/root/.Xauthority:rw \
 -v /etc/localtime:/etc/localtime:ro \
 -v /tmp/.X11-unix:/tmp/.X11-unix \
 -v $PWD/../src/BenchMARL:/root/BenchMARL \
 -v $PWD/../src/VectorizedMultiAgentSimulator:/root/VectorizedMultiAgentSimulator \
 -e DISPLAY=$DISPLAY \
 -it --name "vecmarl" vecmarl bash \
