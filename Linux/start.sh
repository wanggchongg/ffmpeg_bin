#! /bin/sh

exec ./ffserver -f ffserver.conf 1>/dev/null 2>&1 &
exec ./ffmpeg -i udp://239.255.1.2:8899 http://localhost:8090/feed1.ffm http://localhost:8090/feed2.ffm 1>/dev/null 2>&1 &

