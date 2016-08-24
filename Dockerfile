FROM centos:7
MAINTAINER tedgin@cyverse.org

RUN yum -y install \
        boost gcc-c++ openssl-devel make \
        ftp://ftp.renci.org/pub/irods/releases/4.1.9/centos7/irods-dev-4.1.9-centos7-x86_64.rpm \
        ftp://ftp.renci.org/pub/irods/releases/4.1.9/centos7/irods-runtime-4.1.9-centos7-x86_64.rpm

RUN mkdir /src

VOLUME /src
WORKDIR /src

CMD bash
