FROM ubuntu:latest

#Install the latest version of Node
RUN apt-get -y update && apt-get -y install curl wget git build-essential
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get -y install nodejs

#Install Aleph http://docs.mediachain.io/setup/install#installing-aleph
RUN npm -g config set user root
RUN npm install -g aleph

#Create an mcuser to run the mcnode
RUN useradd -ms /bin/bash mcuser
USER mcuser
WORKDIR /home/mcuser

CMD mcclient id
