.PHONY: build

run: build
	-docker rm -f dev
	docker run -d --rm -p 8080:80 --name dev andrewmontagne/lap-stack:latest

sh:
	docker exec -it dev /bin/bash

build:
	docker build . -t andrewmontagne/lap-stack
