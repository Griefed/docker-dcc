# dcc-Container
https://github.com/bucherfa/dcc-web in a container!

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
