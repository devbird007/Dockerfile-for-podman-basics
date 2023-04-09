FROM rhel7:7.5

LABEL name "Emmanuel Taiwo" \
email "mars@gmail.com" \
description "A custom apache image"

ADD training.repo /etc/yum.repos.d/training.repo

RUN yum install -y httpd && \
    yum clean all

RUN echo "Hello from Dockerfile" > /usr/share/httpd/noindex/index.html

EXPOSE 80

ENTRYPOINT ["httpd", "-D", "FOREGROUND"]