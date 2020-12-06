docker run \
--rm \
--net=host \
-e DISPLAY \
-v $HOME/.Xauthority:/root/.Xauthority \
--security-opt seccomp=unconfined \
dataproofer
