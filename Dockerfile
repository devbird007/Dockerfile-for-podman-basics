FROM rhel7.3

LABEL description="This is a custom httpd container image" \
maintainer="John Doe" \
email="jdoe@xyz.com"

RUN yum install -y httpd

EXPOSE 80

ENV LogLevel "info"

ADD http://someserver.com/filename.pdf /var/www/html

COPY ./src/ /var/www/html/

USER apache

ENTRYPOINT ["/usr/sbin/httpd"]

CMD ["-D", "FOREGROUND"]
