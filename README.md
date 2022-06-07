# VCV-Rack

My Patches and a startup script for VCV Rack

## Install 
Steps to install VCV Rack on a new machine

- Install jack
    sudo apt install qjackctl
- Install VCV-Rack 
    unzip zip archive into ~/Rack
- Clone patches 
    git clone https://github.com/tgoerke/VCV-Rack.git ~/.Rack
- Run Rack; Login and update modules
    cd Rack; ./Rack

## Restore File Times

  sudo apt install git-restore-mtime
  cd .Rack/patches/
  git restore-mtime


## Run

From now on...

~/.Rack/start.sh
