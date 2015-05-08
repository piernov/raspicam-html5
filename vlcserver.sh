#!/usr/bin/env bash
/opt/vc/bin/raspivid  -t 0 -w 1920 -h 1080 -fps 25 -o - |  cvlc -vvv stream:///dev/stdin --sout '#standard{access=http,mux=ts,dst=:8090}' :demux=h264
