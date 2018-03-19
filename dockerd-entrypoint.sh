#!/bin/sh
set -e

# no arguments passed
# or first arg is `-f` or `--some-option`
if [ "$#" -eq 0 -o "${1#-}" != "$1" ]; then
	# add our default arguments
	set -- dockerd \
		--host=unix:///var/run/docker.sock \
		--host=tcp://0.0.0.0:2375 \
		"$@"
fi

exec "$@"