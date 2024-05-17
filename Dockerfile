FROM debian:11

RUN apt-get update

RUN apt-get install sudo curl git jq apache2 wget screen libarchive-zip-perl zipmerge bash apt-utils zip nano -y


RUN curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -

RUN apt-get install nodejs -y

WORKDIR /quakejs

COPY . /quakejs/

RUN chmod a+x installer.sh installerconfig.cfg

RUN ./installer.sh


ENTRYPOINT ["sh", "/quakejs/entry.sh"]