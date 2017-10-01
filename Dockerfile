FROM ubuntu:latest

WORKDIR /tmp/

#Install the latest version of Node
RUN apt-get -y update && apt-get -y install curl wget git build-essential
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get -y install nodejs

#Install Concat http://docs.mediachain.io/setup/install#installing-concat
RUN wget https://github.com/mediachain/concat/releases/download/v1.7/mcnode-v1.7-linux-amd64.tgz --no-check-certificate
RUN tar -zxvf /tmp/mcnode-v1.7-linux-amd64.tgz

#Install Aleph http://docs.mediachain.io/setup/install#installing-aleph
RUN npm -g config set user root
RUN npm install -g aleph

EXPOSE 9002

CMD /bin/bash
