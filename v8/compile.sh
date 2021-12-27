#!/bin/sh
PATH=/root/depot_tools:$PATH
mv /root/v8/.cipd /root/v8/cipd
mv /root/v8/cipd /root/v8/.cipd
cd ~/v8/v8 && git reset --hard ${1}
cd ~/v8/v8 && gclient sync
cd ~/v8/v8 && tools/dev/gm.py ${2}
cp -r /root/v8/v8/out/${2} /outdir/${1}
