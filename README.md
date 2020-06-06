# LARP Stack

This is a simple docker container that runs a Linux-Apache-Redis-PHP stack. 

This is for development purposes and will serve domains from the `/app` directory by using the first component of the domain name to pick a folder. For example: `site.local.dev` would correspond to `/app/site/`. `/app` is by default mounted to `~/dev/` on the host, so `site.local.dev` will map to `~/dev/site`.

## Services

There is no relational database on this container! I suggest that you should host a database properly on your development machine. Redis is provided for volatile storage between requests.

Xdebug should work out of the box with the IDE key of `docker`.

## Building

This container can be built and run by invoking `make` or `make run`, built alone with `make build` and you can open a terminal with `make sh`.