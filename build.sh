#! /bin/sh

docker build --tag irods-dev-build .
docker run --rm --tty --user=$(id -u):$(id -g) --volume=$(pwd)/src:/src --name=setavu-builder \
	   irods-dev-build make clean all 
