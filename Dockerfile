FROM ubuntu:latest

RUN apt update && apt install -y unzip libcatalyst-perl libcatalyst-modules-extra-perl libcatalyst-modules-perl libcatalyst-view-tt-perl libcatalyst-devel-perl vim iputils-ping telnet

ADD https://github.com/NiklasSchmitt/perl-pollenflug-catalyst/archive/refs/heads/master.zip /tmp
RUN unzip /tmp/master.zip -d /opt && mv /opt/perl-pollenflug-catalyst-master /opt/pollenflug && rm /tmp/master.zip

#RUN cd /opt && catalyst.pl Pollenflug

EXPOSE 3000/tcp

CMD /opt/pollenflug/script/pollenflug_fastcgi.pl -l :3000 -n 2
