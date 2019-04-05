# 简单web安全测试环境

# 新生成的镜像基于metasploitable2环境
FROM tleemcjr/metasploitable2:latest

MAINTAINER ju5ton1y

COPY web.tar.gz /var/www/
WORKDIR /var/www
RUN tar -zxvf web.tar.gz

RUN sed -i "s:DocumentRoot /var/www/:DocumentRoot /var/www/web:g" /etc/apache2/sites-enabled/000-default

WORKDIR /root/

ADD exam.sql exam.sql
ADD setup.sh /root/setup.sh
RUN chmod 755 /root/setup.sh
#RUN ./setup.sh

EXPOSE 3306 80

ENTRYPOINT ./setup.sh && /bin/bash
