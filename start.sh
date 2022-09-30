cd ~/Rack2
test $(hostname) == "tri" && export LD_LIBRARY_PATH=~/.Rack/libs:$LD_LIBRARY_PATH 

qjackctl --start &

# https://github.com/jackaudio/jackaudio.github.com/wiki/WalkThrough_User_PulseOnJack#redirecting-pulseaudio-to-jack
# listen to browser audio while patching
pactl load-module module-jack-sink channels=2; pactl load-module module-jack-source channels=2; pacmd set-default-sink jack_out

# get name of audio device plugged into USB
device=$(aplay -l -q|grep '\[USB Audio\]'  | awk '{FS=":"; print $3}')                                                                                             

#jackd -d alsa -r44100 -p256 -n3 -D -dhw:${device} & ./Rack
#jackd -d alsa -r44100 -p4096 -n3 -D -dhw:${device} & ./Rack
#jackd -d alsa -r44100 -p2048 -n3 -D -dhw:${device} & ./Rack
jackd -d alsa -r48000 -p2048 -n3 -D -dhw:${device} & ./Rack

#jackd -d alsa -dhw0 & ./Rack
#jackd -d alsa -d:"Scarlett 2i2 USB" & ./Rack

