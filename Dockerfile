FROM centos
RUN yum install -y java-1.7.0-openjdk-devel.x86_64
EXPOSE 80:80
ADD . /app
WORKDIR /app
ENV LEIN_ROOT asdf
CMD ./lein.sh ring server

