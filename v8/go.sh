#!/bin/sh
docker run --rm -v `pwd`:/outdir kjdy_v8 /root/compile.sh ${1} ${2}
