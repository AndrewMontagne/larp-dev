# LARP Stack

This is a simple docker container that runs a Linux-Apache-Redis-PHP stack. This is for development purposes and will serve domains from the /app directory according to the following:

`site.dev.blufo.ps` will correspond to `/app/site/` and `/app` is by default mounted to `~/dev/` on the host under the user running it, so `site.dev.blufo.ps` will map to `~/dev/site`.

## Building

This container can be built and run by invoking `make` or `make run`, built alone with `make build` and you can open a terminal with `make sh`.