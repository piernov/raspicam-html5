/opt/vc/bin/raspivid -t 0 -w 1920 -h 1080 -fps 25 -o - | gst-launch-1.0 fdsrc ! h264parse ! rtph264pay config-interval=1 pt=96 ! gdppay ! tcpserversink host=$serverIp port=5000

