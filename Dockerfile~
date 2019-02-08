FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN curl -fsSL get.docker.com | sh

RUN curl -L --fail https://github.com/docker/compose/releases/download/1.14.0/run.sh > /usr/local/bin/docker-compose
RUN chmod a+x /usr/local/bin/docker-compose

USER jenkins
