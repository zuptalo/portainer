FROM ubuntu:latest

MAINTAINER kamran.alipour@zuptalo.com

RUN apt-get update && apt-get install -y wget && wget https://github.com/portainer/portainer/releases/download/2.0.0/portainer-2.0.0-linux-amd64.tar.gz && tar -zxpf portainer-2.0.0-linux-amd64.tar.gz && rm portainer-2.0.0-linux-amd64.tar.gz && chmod 755 portainer/portainer portainer/docker portainer/kubectl portainer/kompose && chmod 644 portainer/public/* && apt-get purge -y wget && rm -rf /var/lib/apt/lists/* /tmp/*

WORKDIR /portainer/

EXPOSE 9000 8000

CMD /portainer/portainer
