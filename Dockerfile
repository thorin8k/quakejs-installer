FROM debian:11

RUN apt-get install sudo curl git jq apache2 wget apt-utils screen libarchive-zip-perl zipmerge bash -y


RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

RUN apt-get install nodejs npm -y

WORKDIR /quakejs

COPY ./*.* /quakejs



RUN /quakejs/installer.sh