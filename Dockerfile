FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN curl -fsSL get.docker.com | sh

RUN curl -L --fail https://github.com/docker/compose/releases/download/1.14.0/run.sh > /usr/local/bin/docker-compose
RUN chmod a+x /usr/local/bin/docker-compose

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt

USER jenkins
