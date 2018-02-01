# Acarsserv

acarsserv is a companion program for [acarsdec](https://github.com/TLeconte/acarsdec) and [vdlm2dec](https://github.com/TLeconte/vdlm2dec).
It listens to acars messages on UDP coming from one or more acarsdec or vdlm2dec processes and stores them in a sqlite database.

## Compilation

To compile it, just type : 
> make -f Makefile

acarsserv need sqlite3 dev libraries (on Fedora : sqlite-devel rpm, on Ubuntu : libsqlite3-dev ).

## Examples

json format 

> acarsdec -A -o0 -j 192.168.1.1:5555 -r 0 131.525 131.725 131.825

or

> vdlm2dec -q -j 192.168.1.1:5555  -r 0 131.525 131.725 131.825

and

> acarsserv -j 192.168.1.1:5555

Old binary format :

> acarsdec -A -N 192.168.1.1:5555 -o0 -r 0 131.525 131.725 131.825

and

> acarsserv -N 192.168.1.1:5555

where 192.168.1.1 is the ip address of your computer running acarsserv.

acarsserv will create by default an acarsserv.sqb database file where it will store received messages.
You could read its content with sqlite3 command (or more sophisticated graphical interfaces like sqlitebrowser).

acarsserv has some messages filtering and network options (UTSL).


## Copyrights 
acarsdec and acarsserv are Copyright Thierry Leconte 2015-2018

These code are free software; you can redistribute it and/or modify
it under the terms of the GNU Library General Public License version 2
published by the Free Software Foundation.

They include [cJSON](https://github.com/DaveGamble/cJSON) Copyright (c) 2009-2017 Dave Gamble and cJSON contributors
