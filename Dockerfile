FROM registry.access.redhat.com/ubi9/ubi:9.4-1123 as dependencies
WORKDIR /go/src/github.com/openshift/installer

RUN yum update -y && \
    yum install wget -y

COPY *.sh .
RUN ./install-virtctl.sh