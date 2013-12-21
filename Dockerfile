# Base operating system image
FROM centos

# Plus java - which doesn't come out of the box
RUN yum install -y java-1.7.0-openjdk-devel.x86_64

# Copy this working directory to /app in the container
ADD . /app

# Build a standalone jar with all the dependencies
WORKDIR /app
RUN ./lein.sh ring uberjar

# Default commands to start her up (not run during the build)
EXPOSE 3000
ENV LEIN_ROOT asdf
CMD java -jar /app/target/hello-compojure-world-*-SNAPSHOT-standalone.jar

