# Dockerfile-for-podman-basics

This is a basic Dockerfile that builds an apache image on top of a rhel7 base image.

You can run it with the following command:

`podman build -t NAME:TAG DIR`

* NAME: Name of your image
* TAG: The image's version
* DIR: Your working directory. You can use a period(.) to denote your current directory, then execute.
