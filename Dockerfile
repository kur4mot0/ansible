FROM centos:latest
COPY azure-cli.repo /etc/yum.repos.d/azure-cli.repo
RUN rpm --import https://packages.microsoft.com/keys/microsoft.asc
RUN yum install -y dotnet-sdk-2.2 dotnet-runtime-2.2 azure-cli libicu
RUN yum install -y https://centos7.iuscommunity.org/ius-release.rpm
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum update -y
RUN yum install -y expect openssh-clients ansible python2 python2-pip python3 python3-pip
RUN pip2 install packaging
RUN pip2 install ansible
RUN pip2 install ansible --upgrade
RUN pip2 install msrest
RUN pip2 install ansible[azure]
RUN pip3 install ansible
RUN pip3 install ansible --upgrade
RUN pip3 install packaging
RUN pip3 install msrest
RUN pip3 install ansible[azure]
WORKDIR /opt
