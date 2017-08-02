FROM jenkins

USER root
RUN curl -fsSL get.docker.com | sh
USER jenkins
