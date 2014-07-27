#!/bin/bash
#
docker run \
	-P --name rs1_srv1 \
	-d dbongo/mongodb \
	--replSet rs1 \
	--noprealloc --smallfiles

docker run \
	-P --name rs1_srv2 \
	-d dbongo/mongodb \
	--replSet rs1 \
  	--noprealloc --smallfiles

docker run \
 	-P --name rs1_srv3 \
 	-d dbongo/mongodb \
  	--replSet rs1 \
  	--noprealloc --smallfiles

docker run \
	-P --name rs2_srv1 \
	-d dbongo/mongodb \
  	--replSet rs2 \
  	--noprealloc --smallfiles

docker run \
	-P --name rs2_srv2 \
	-d dbongo/mongodb \
  	--replSet rs2 \
  	--noprealloc --smallfiles

docker run \
	-P --name rs2_srv3 \
	-d dbongo/mongodb \
  	--replSet rs2 \
  	--noprealloc --smallfiles