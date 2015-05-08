#!/usr/bin/env bash

cvlc -v http://Koneko.local:8090/ :sout="#transcode{vcodec=theo,vb=3400,scale=1,width=1920,height=1080,acodec=none}:http{mux=ogg,dst=:8086}" :no-sout-rtp-sap :no-sout-standard-sap :ttl=1 :sout-keep -vvv
