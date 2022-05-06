# some-tools

## gitprepare

The first (_btw: won't be the last_) executable tool I wrote that I felt confident enough to place in its very own location (for my custom scripts) at `~/bin`, which is in my `$PATH` thanks to this line —

```sh
export PATH=$HOME/bin:/usr/local/sbin:$PATH
```

— one of many in my `~/.zshrc`.

## temp-convert.js

A simple, unidirectional temperature conversion tool (from °F to °C and K). Using it is very straightforward (as you might have guessed):

```sh
node temp-convert.js
```

## airports.sh

Made to quickly extract the apt.dat files from their respective [X-Plane Scenery Gateway](https://gateway.x-plane.com/) zip files in which they were contained, in bulk. This is a necessary step in the process of generating custom scenery for [FlightGear](https://www.flightgear.org/).
