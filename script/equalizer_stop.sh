#! /bin/bash

pactl set-default-sink $(head -1 /home/phablet/.config/radio.s710/radio.s710.defaultsink.txt)

oldsink=$(head -1 /home/phablet/.config/radio.s710/radio.s710.oldsink.txt)
pactl unload-module $oldsink
