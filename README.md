# Radio

App for playing webradio streams

<p float="left">
<img title="Screenshot" alt="Screenshot" width="32%" src="screenshots/screenshot1.png">
<img title="Screenshot" alt="Screenshot" width="32%" src="screenshots/screenshot2.png">
</p>

# Features

Allows to play music streams, which can be searched via the built-in search function, or added manually (by supplying a valid URL to a supported audio stream).

Streams can be saved as favourite for quick and easy access.

The search is powered by the awesome https://www.radio-browser.info.

[![OpenStore](https://open-store.io/badges/en_US.png)](https://open-store.io/app/radio.s710)

## License

Copyright (C) 2021-2022 Patrick Fial

Licensed under the MIT license

## Requirements

You will have to install [playerctl](https://github.com/altdesktop/playerctl):

-for UT Focal you can find it in the repos and install it like so:

`sudo mount -o remount,rw /`,
`sudo apt update`,
`sudo apt install playerctl`

-to keep the system space clean, do:

`sudo apt clean`,
`sudo apt autoclean`,
`sudo rm -rf /var/lib/apt/lists/*`,
`sudo mount -o remount,ro /`

afterwards.

Unfortunately (at the moment?) this does not work, when connected to speakers etc. over bluetooth.

Keep in mind that it might lead to problems when doing an OTA update, so better uninstall before and reinstall after updating.
