.PHONY: build sh

run: build
	-docker rm -f dev
	docker run -d --rm --mount type=bind,source=$(HOME)/dev,target=/app -p80:80 --name dev andrewmontagne/larp-dev:latest

sh:
	docker exec -it dev /bin/bash

build:
	docker build . -t andrewmontagne/larp-dev
