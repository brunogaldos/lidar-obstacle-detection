xhost +

cd ../..
docker run \
    -it \
    --rm \
    --net=host \
    --privileged \
    --env="DISPLAY" \
    -v "$HOME/.Xauthority:/root/.Xauthority:rw" \
    --name test \
    docker-base-image-pan:main \
    bash
