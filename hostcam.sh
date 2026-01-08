cd mjpg-streamer/mjpg-streamer-experimental/
./mjpg_streamer -i "./input_uvc.so -d /dev/video0 -r 640x480 -f 30 " -o "./output_http.so -w ./www" >/dev/null 2>&1 &
ngrok http 8080

