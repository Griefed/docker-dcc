FROM httpd:alpine

LABEL maintainer="Griefed <griefed@griefed.de>"

RUN     apk update && apk upgrade                                                       && \
        mkdir /temp && cd /temp                                                         && \
        wget https://github.com/Griefed/dcc-web/archive/gh-pages.zip                    && \
        unzip gh-pages.zip && cp -R ./dcc-web-gh-pages/. /usr/local/apache2/htdocs/     && \
        rm -rf /temp

WORKDIR /usr/local/apache2/htdocs

EXPOSE 80
