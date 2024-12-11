FROM centos:8


USER root

# Install systemd -- See https://hub.docker.com/_/centos/
#RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
#systemd-tmpfiles-setup.service ] || rm -f $i; done); \
#rm -f /lib/systemd/system/multi-user.target.wants/*;\
#rm -f /etc/systemd/system/*.wants/*;\
#rm -f /lib/systemd/system/local-fs.target.wants/*; \
#rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
#rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
#rm -f /lib/systemd/system/basic.target.wants/*;\
#rm -f /lib/systemd/system/anaconda.target.wants/*;




# Fix EOL Mirror issue
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Linux-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-Linux-*




# Install requirements.
RUN yum -y install rpm centos-release dnf-plugins-core \
 && yum -y update \
 && yum -y config-manager --set-enabled powertools \
 && yum -y install \
      iproute \
	  net-tools \
	  openssh \
	  openssh-clients \
	  openssh-server \
      epel-release \
      initscripts \
      sudo \
      which \
      wget \
      hostname \
      libyaml-devel \
      python3 \
      python3-pip \
      python3-pyyaml \
 && yum clean all
 
 
# Upgrade pip to latest version.
RUN pip3 install --upgrade pip
	

RUN ssh-keygen -A

RUN useradd -ms /bin/bash ruby
RUN echo 'ruby:password' | chpasswd
RUN echo 'root:password' | chpasswd

RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ie 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config



RUN mkdir /root/.ssh
RUN chmod 700 /root/.ssh && chown root:root /root/.ssh
#WORKDIR /root/.ssh
#COPY id_rsa.pub authorized_keys
#RUN chmod 600 authorized_keys && chown root:root authorized_keys
#WORKDIR /





EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
#CMD ["/usr/lib/systemd/systemd"]
