FROM debian:10
LABEL MAINTAINER Samu <sorga@cambrils.cat>

RUN        apt update && \
        apt install -y libapache2-mod-php php-mysql curl

WORKDIR /var/www/html

RUN     rm *.html && \
	curl -s https://wordpress.org/latest.tar.gz | tar zx --strip-components=1
	


#RUN        apt install -y openjdk-11-jdk
#RUN        apt purge -y openjdk-11-jdk
#COPY  index.html /var/www/html

#ADD   web.tgz    /var/www/html
#Modifico alguna cosa
EXPOSE 80

CMD [ "/usr/sbin/apache2ctl", "-D", "FOREGROUND" ]

