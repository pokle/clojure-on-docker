Demonstrates how to run a Clojure web app on a CoreOS Docker container.

To run on your own computer:

    ./lein.sh ring server

To build on CoreOS (Uses the Dockerfile):

	git clone https://github.com/pokle/clojure-on-docker.git
	cd clojure-on-docker
	docker build -t pokle/clojure-on-docker .

To manually start on CoreOS:

	docker run -p 80:3000 pokle/clojure-on-docker

Things remaining to be worked out

- How do I configure a SystemD Unit to start up the app automatically?
- How do I push a build image to a non-public docker image repo?


