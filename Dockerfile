FROM centos:8
MAINTAINER Jesse DeFer <rpmbuild8@dotd.com>

RUN dnf update -y 
RUN dnf groupinstall -y "Development Tools"
RUN dnf install -y rpm-build wget curl pcre-devel openssl-devel zlib-devel systemd-devel rpmdevtools kernel-devel pam-devel ncurses-devel perl-devel perl-ExtUtils-Embed elfutils-devel swig

RUN groupadd -g 1000 jenkins && useradd -u 1000 -g 1000 -m jenkins && mkdir /home/jenkins/rpmbuild && chown 1000:1000 /home/jenkins/rpmbuild
