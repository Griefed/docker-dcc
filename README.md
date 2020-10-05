# dcc-Container
https://github.com/bucherfa/dcc-web in a container!

![Docker Pulls](https://img.shields.io/docker/pulls/griefed/dcc?style=flat-square)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/griefed/dcc?label=Image%20size&sort=date&style=flat-square)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/griefed/dcc?label=Docker%20build&style=flat-square)
![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/griefed/dcc?label=Docker%20build&style=flat-square)
![GitHub Repo stars](https://img.shields.io/github/stars/Griefed/docker-dcc?label=GitHub%20Stars&style=social)
![GitHub forks](https://img.shields.io/github/forks/Griefed/docker-dcc?label=GitHub%20Forks&style=social)

Creates a Container which runs [bucherfa's](https://github.com/bucherfa) [dcc-web](https://github.com/bucherfa/dcc-web), with [httpd:alpine](https://hub.docker.com/_/httpd) as the base image, as seen on https://bucherfa.github.io/dcc-web/. 

# Deploy with docker-compose:
```
  dcc:
    container_name: dcc
    image: griefed/dcc
    restart: unless-stopped
    ports:
      - 80:80
```
### Deploy on Rasbperry Pi
Using the Dockerfile, this container can be built and run on a Raspberry Pi, too! I've tested it on a Raspberry Pi 3B+.
Simply put the Dockerfile in a directory called `dcc` in the same directory as your docker-compose.yml, edit your docker-compose.yml:
```
  dcc:
    container_name: dcc
    build: ./dcc/
    restart: unless-stopped
    ports:
      - 80:80
```
Then build with:
```
docker-compose up -d --build dcc
```
![dcc](https://i.imgur.com/HIPMnF8.png)
