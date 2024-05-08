#!/usr/bin/env bash
PACKAGE="github.com/RKrahulkumar123/Build-Time-Variables-in-Go"
VERSION="$(git describe --tags --always --abbrev=0 --match='v[0-9]*.[0-9]*.[0-9]*' 2> /dev/null | sed 's/^.//')"
COMMIT_HASH="$(git rev-parse --short HEAD)"
BUILD_TIMESTAMP=$(date '+%Y-%m-%dT%H:%M:%S')

LDFLAGS=(
  "-X '${PACKAGE}/config.Version=${VERSION}'"
  "-X '${PACKAGE}/config.CommitHash=${COMMIT_HASH}'"
  "-X '${PACKAGE}/config.BuildTime=${BUILD_TIMESTAMP}'"
)

go build -ldflags="${LDFLAGS[*]}"