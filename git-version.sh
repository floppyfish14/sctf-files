#!/bin/bash
# A script to help with versioning
revisioncount=`git log --oneline | wc -l`
projectversion=`git describe --tags --long`
cleanversion=${projectversion%%-*}

#echo "$projectversion-$revisioncount"
echo "$cleanversion.$revisioncount"

git tag "$cleanversion.$revisioncount"
git push origin "$cleanversion.$revisioncount"
