FROM centos:latest
MAINTAINER George Parker <gsp.gsp@gmail.com>
RUN yum install -y openssh-server
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N ''
ARG password=changeme1!
RUN echo root:$password |  chpasswd

# By default, simply start apache.
CMD /usr/sbin/sshd -D
