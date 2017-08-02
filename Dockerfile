FROM jenkins

USER root
RUN curl -fsSL get.docker.com | sh

RUN curl -L https://github.com/docker/compose/releases/download/1.14.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose

USER jenkins
