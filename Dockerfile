#Dockerfile
FROM takeharu/docker-ubuntu-mysql:latest
MAINTAINER Takeharu Yamaguchi <https://github.com/takeharu>

WORKDIR /work
ADD ./create_database.sql /work/

RUN service mysql start && mysql -u root -proot < /work/create_database.sql

EXPOSE 3306

CMD ["mysqld_safe"]
