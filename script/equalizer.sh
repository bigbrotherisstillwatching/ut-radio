#! /bin/bash

pacmd list-sinks | grep -A1 '* index:' | sed 's/.*<//; s/>.*//' | grep -v '* index:' > /home/phablet/.config/radio.s710/radio.s710.defaultsink.txt

#pactl set-default-sink sink.primary_output
#pactl set-default-sink $(pacmd list-sinks | grep -A1 '* index:' | sed 's/.*<//; s/>.*//' | grep -v '* index:')
#pactl set-default-sink $(head -1 /home/phablet/.config/radio.s710/radio.s710.defaultsink.txt)

oldsink=$(head -1 /home/phablet/.config/radio.s710/radio.s710.oldsink.txt)
pactl unload-module $oldsink

#pactl load-module module-ladspa-sink sink_name=equalizer sink_master=sink.primary_output plugin=/opt/click.ubuntu.com/radio.s710/1.4.5/lib/caps.so label=Eq10X2 control=$(sed -n '3p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '5p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '6p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '7p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '8p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '9p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '10p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '11p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '12p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '4p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//') > /home/phablet/.config/radio.s710/radio.s710.oldsink.txt
pactl load-module module-ladspa-sink sink_name=equalizer sink_master=$(head -1 /home/phablet/.config/radio.s710/radio.s710.defaultsink.txt) plugin=/opt/click.ubuntu.com/radio.s710/1.4.5/lib/caps.so label=Eq10X2 control=$(sed -n '3p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '5p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '6p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '7p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '8p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '9p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '10p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '11p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '12p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '4p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//') > /home/phablet/.config/radio.s710/radio.s710.oldsink.txt

pactl set-default-sink equalizer
