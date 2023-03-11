# whensalat  *Know your praying times from the terminal*
```
$ ./whensalat -h
whensalat  Know your praying times from the terminal
Copyright (C) 2023  Jump are op (jumpsareop@gmail.com)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

USAGE: whensalat [OPTIONS] [SALATNAME]

OPTIONS:
	-n     Print next salat (times with -a and -t is included when specified)
	-a     Also display Imsak, Midnight, and Sunset times
	-t     Also display Firstthird and Lastthird times
	-l     Use last cached location (see CACHING)
	-c     Ignored cached salat times (see CACHING)
	-C     Clear cached salat times and location (see CACHING)
	-m     Set method
	   (see method section in https://aladhan.com/prayer-times-api#GetCalendar)

SALATNAME:
	Name of the salat to print.
	If not specified and -n also not specified, then will print all salats.

CACHING:
	By default salat times and your location are cached,
	but only salat times cache is used.
	If you want to use your last cached location, use `-l'.
	If you want to only ignore salat times cache without deleting them, 
	use `-c'.
	If you want to clear all cached data, use `-C'.

	EXAMPLES:
	$ whensalat
	Will try to find your location (even if it's already cached),
	then cache it. Then will use cached salat times,
	if they are already cached and still valid,
	else will download it and cache it.

	$ whensalat -C
	Same as before, except delete all cache before doing anything.

	$ whensalat -c
	Same as the first one, except ignore salat times cache.

	$ whensalat -l
	Same as the first one, except use last cached loction (if exist).

	$ whensalat -cl
	Same as the first one, except ignore salat times cache,
	and use last cached loction (if exist).
```
## Privacy
This program (`whensalat`) is under GPLv3
but it uses other people's APIs, which may collect some information, these are
* [ipinfo.io](https://ipinfo.io) which is used to get your location
* [aladhan.com](https://aladhan.com)
which is used to get salat times for your location

## Why?
I don't want to open a web browser just to know a when the next salat will be.  
And it also can be used in a script to show the next salat
in a taskbar/statusbar (e.g. along side the time clock,
so when you look at the clock you know when is the next salat)

"Cooperate with one another in goodness and righteousness, and do not cooperate in sin and transgression." -- Al-Ma'idah 5:2
