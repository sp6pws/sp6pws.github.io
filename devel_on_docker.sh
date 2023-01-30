#!/bin/bash

export JEKYLL_VERSION=latest
docker run --rm \
  --name sp6pws.github.com \
  --volume="$PWD:/srv/jekyll:Z" \
  --publish-all \
  -it jekyll/jekyll:$JEKYLL_VERSION \
  jekyll serve --watch --trace