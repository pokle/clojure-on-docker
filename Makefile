all: uberjar image

uberjar:
	./lein.sh ring uberjar

image:
	docker build -t clojure-on-docker .