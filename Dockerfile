FROM ubuntu:14.04
MAINTAINER Aakriti Shroff <aakriti@mit.edu>

run apt-get update -y
run apt-get install -y mercurial
run apt-get install -y git
run apt-get install -y python
run apt-get install -y curl
run apt-get install -y vim
run apt-get install -y strace
run apt-get install -y diffstat
run apt-get install -y pkg-config
run apt-get install -y cmake
run apt-get install -y build-essential
run apt-get install -y tcpdump
run apt-get install -y screen

run curl https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz | tar -C /usr/local -zx

#MKDIR GOPATH
RUN mkdir -p /go
RUN mkdir -p /go/bin
RUN mkdir -p /go/pkg
RUN mkdir -p /go/src/github.com
RUN mkdir -p /go/src/github.com/aakritishroff

ENV PATH /go/bin:/usr/local/go/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin
ENV GOPATH /go
env PATH /go/bin:$PATH
ENV GOROOT /usr/local/go
env PATH /usr/local/go/bin:$PATH

WORKDIR /go/src/github.com/aakritishroff/groot
#RUN go get github.com/aakritishroff/groot
ADD . /go/src/github.com/aakritishroff/groot

#RUN go get
#RUN go build
#EXPOSE 8080
#ENTRYPOINT ./groot
