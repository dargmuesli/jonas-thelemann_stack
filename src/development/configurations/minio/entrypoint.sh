#!/bin/sh

# create dirs for required buckets
mkdir -p /data/jonas-thelemann-backup /data/creal-audio

# delegate to real entrypoint
# shellcheck disable=SC1091
. /usr/bin/docker-entrypoint.sh