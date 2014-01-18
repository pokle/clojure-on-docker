# Base operating system image
FROM centos

# Plus java - which doesn't come out of the box
RUN yum install -y java-1.7.0-openjdk-devel.x86_64

ADD target/hello-compojure-world-0.1.0-SNAPSHOT-standalone.jar /

EXPOSE 3000
CMD java -jar /hello-compojure-world-*-SNAPSHOT-standalone.jar
