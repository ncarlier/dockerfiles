# Docker Jenkins image.
#
# VERSION 0.0.1

FROM debian:jessie

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

ENV DEBIAN_FRONTEND noninteractive

# Update distrib
RUN apt-get update && apt-get clean

# Install packages
RUN apt-get install -q -y sudo openjdk-7-jre-headless make git curl && apt-get clean

# Install Jenkins
RUN mkdir -p /opt/jenkins /var/opt/jenkins/plugins
ADD http://mirrors.jenkins-ci.org/war/latest/jenkins.war /opt/jenkins/jenkins.war
RUN chmod 644 /opt/jenkins/jenkins.war
ENV JENKINS_HOME /var/opt/jenkins
RUN adduser --disabled-password jenkins
RUN chown -R jenkins "$JENKINS_HOME"

# Install the latest version of the docker CLI
ADD https://get.docker.io/builds/Linux/x86_64/docker-latest /usr/local/bin/docker
RUN chmod +x /usr/local/bin/docker

# Allow jenkins user to use docker
RUN echo "jenkins    ALL=NOPASSWD: /usr/local/bin/docker" > /etc/sudoers.d/docker

# Install Jenkins plugins
COPY plugins.txt /var/opt/jenkins/plugins/urls.txt
RUN (cd /var/opt/jenkins/plugins; xargs -n 1 curl -OL < urls.txt)

USER jenkins

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/opt/jenkins/jenkins.war"]

CMD [""]
