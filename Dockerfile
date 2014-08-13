
FROM centos:latest

MAINTAINER hitoshiarizono <hitoshiarizono@gmail.com>

RUN yum update -y

RUN touch /etc/yum.repos.d/nginx.repo
RUN echo "[nginx]" >> /etc/yum.repos.d/nginx.repo
RUN echo "name=nginx repo" >> /etc/yum.repos.d/nginx.repo
RUN echo "baseurl=http://nginx.org/packages/centos/7/\$basearch/" >> /etc/yum.repos.d/nginx.repo
RUN echo "gpgcheck=0" >> /etc/yum.repos.d/nginx.repo
RUN echo "enabled=1" >> /etc/yum.repos.d/nginx.repo
RUN yum install -y nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx"]

