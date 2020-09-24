#!/bin/bash
# A script to help with versioning
REVISION=$(git log --oneline | wc -l)
TAG=$(git describe --tags)

NEWTAG="$TAG.$REVISION"
echo $NEWTAG
