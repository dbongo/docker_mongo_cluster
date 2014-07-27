#!/bin/bash
#
docker build \
	-t dbongo/mongodb mongod

docker build \
  -t dbongo/mongos mongos