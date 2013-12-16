FROM centos
RUN yum install -y java-1.7.0-openjdk-devel.x86_64
EXPOSE 3000
ADD . /app
WORKDIR /app
ENV LEIN_ROOT asdf
RUN  ./lein.sh ring uberjar
CMD java -jar /app/target/hello-compojure-world-*-SNAPSHOT-standalone.jar

