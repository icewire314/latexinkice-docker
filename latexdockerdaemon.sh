#!/bin/sh
IMAGE=icewire314/latexinkice:ubuntu
exec docker run -d --rm --name latex_daemon -i --user="$(id -u):$(id -g)" --net=none -t -v $PWD:/data "$IMAGE" /bin/sh -c "sleep infinity"
