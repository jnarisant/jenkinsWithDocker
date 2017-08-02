FROM jenkins

USER root
RUN apt-get update && apt-get install -y docker && apt-get clean

USER jenkins

#FROM docker:17.07.0-ce
#RUN apk --update add openjdk8-jdk \
#    wget -O http://mirrors.jenkins.io/war-stable/latest/jenkins.war