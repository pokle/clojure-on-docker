hello-compojure-world
=====================

Demonstrates how to run a Clojure web app on a CoreOS Docker container.

To run on your own computer:

    ./lein.sh ring server

To build on CoreOS:

	git clone https://github.com/pokle/hello-compojure-world.git
	cd hello-compojure-world
	docker build -t pokle/hello-compojure-world .

To manually start on CoreOS:

	docker run -p 80:3000 pokle/hello-compojure-world

Things remaining to be worked out

- How do I configure a SystemD Unit to start up the app automatically?
- How do I push a build image to a non-public docker image repo?


