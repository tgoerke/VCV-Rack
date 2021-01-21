cd ~/Rack
export LD_LIBRARY_PATH=~/.Rack/libs:$LD_LIBRARY_PATH 

qjackctl --start &

# get name of audio device plugged into USB
device=$(aplay -l -q|grep '\[USB Audio\]'  | awk '{FS=":"; print $3}')                                                                                             

#jackd -d alsa -r44100 -p256 -n3 -D -dhw:${device} & ./Rack
jackd -d alsa -r44100 -p2048 -n3 -D -dhw:${device} & ./Rack
#jackd -d alsa -r44100 -p4096 -n3 -D -dhw:${device} & ./Rack

#jackd -d alsa -dhw0 & ./Rack
#jackd -d alsa -d:"Scarlett 2i2 USB" & ./Rack
