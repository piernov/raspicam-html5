# raspicam-html5

Stream from Raspberry Pi camera to an HTML5 web page
Made for ArchLinux, VLC 2.1.0 with FFMPEG-compat 0.10.16.
VLC 2.2.0 has a bug which prevent transcoding.
FFMPEG 2 has a bug in the h264 video codec with the stream from the Raspberry Pi

##### vlcserver.sh
To be ran on the Raspberry Pi

raspivid (binary path need to be adjusted) sends the stream from the camera encoded in H264 to the standard output
cvlc gets it on the standard input and streams it with HTTP protocol on port 8090, MPEG-TS muxed.

##### vlctranscode.sh
To be ran on the server

Read the stream from the Raspberry Pi (called Koneko here, with Avahi daemon launched on it), transcodes it to Theora (still in 1920x1080, can be adjusted if the machine isn't powerful enough) and streams it on the port 8086 still by HTTP, OGG muxed.

##### apache.conf
Apache configuration file for the web server

Creates a proxy pointing to the transcoded stream (not essential but enables the browser to interact with a real HTTP server

##### index.xhtml
To be put in the DocumentRoot of the web server
XHTML5 file with the <video> tag pointing to the Apache proxy at http://localhost/cam1 (URL needs to be adjusted)
