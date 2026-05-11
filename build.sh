#!/bin/bash

set -e

version=$1

if [ -z $version ]; then echo No version was supplied. && exit 1; fi

docker build -t ghcr.io/netbeheer-nederland/build-dp:upcoming -t ghcr.io/netbeheer-nederland/build-dp:latest -t ghcr.io/netbeheer-nederland/build-dp:$version .

docker push ghcr.io/netbeheer-nederland/build-dp:upcoming
docker push ghcr.io/netbeheer-nederland/build-dp:latest
docker push ghcr.io/netbeheer-nederland/build-dp:$version
