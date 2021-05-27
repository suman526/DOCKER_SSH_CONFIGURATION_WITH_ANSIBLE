FROM centos:latest

MAINTAINER Suman Yadav <sumanlw13@gmail.com>

LABEL env = dev

LABEL description = "THIS DOCKERFILE IS USED FOR SSH"

RUN yum install openssh-server passwd -y

RUN echo docker | passwd root --stdin

RUN ssh-keygen -A

CMD ["/usr/sbin/sshd", "-D"] && /bin/bash
