FROM centos:8
MAINTAINER Jesse DeFer <rpmbuild8@dotd.com>

RUN dnf update -y 
RUN dnf groupinstall -y "Development Tools"
RUN dnf install -y rpm-build wget curl pcre-devel openssl-devel zlib-devel systemd-devel rpmdevtools
