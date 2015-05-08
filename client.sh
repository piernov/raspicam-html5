serverIp=Koneko.local
gst-launch-0.10 -v tcpclientsrc host=$serverIp port=5000 ! gdpdepay ! rtph264depay ! ffdec_h264 ! autovideosink sync=true
