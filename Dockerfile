FROM centos:centos7

LABEL maintainer="kodelint"
LABEL maintainer_email="kodelint@gmail.com"
LABEL destription="Simple CentOS6 with all necessary tools"

RUN set -x \
    && yum update -y \
    && yum upgrade -y \
    && yum install curl -y \
    && yum install telnet -y \
    && yum install iputils -y \
    && yum install wget -y \
    && yum install vim-enhanced -y \
    && yum install git -y

WORKDIR /srv/

CMD ["/bin/bash"]

