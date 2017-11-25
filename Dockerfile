FROM centos:6

RUN yum install -y wget
RUN yum install -y rpm-build
RUN yum install -y yum-utils
RUN yum install -y rpmdevtools
RUN yum install -y gcc
RUN yum install -y git

WORKDIR /root/build

COPY . /root/build

RUN yum-builddep -y git214.spec

RUN make build
