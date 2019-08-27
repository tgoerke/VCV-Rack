cd ~/Rack
export LD_LIBRARY_PATH=~/.Rack/libs:$LD_LIBRARY_PATH 
qjackctl &

jackd -d alsa -dhw:USB & ./Rack
#jackd -d alsa -dhw0 & ./Rack
#jackd -d alsa -d:"Scarlett 2i2 USB" & ./Rack
