# OpenTTD Military Items NewGRF file

## About

Military Items provides military aircraft from around the world. 
The set is not aimed at specific military operators or manufacturers,
but rather gives you a broad selection so that you can be your own 
company. To support that goal, the vehicles are in dual company colours.

## Usage and Parameters

The first aircraft is available from 1913. Build (small) airports to use
aircraft.

By default military airplanes (especially fighters) can carry only limited types
of cargo. But this set also consists of heavy-lift military transport aircraft.

By default each vehicle can be purchased in similar years like in real life.
The vehicle life corresponds to use by users anywhere in the world.

### Parameters



### Contents

The set contains several airports based on aircraft carriers. Due to the limitations of the game, these airports are adapted, ie. the bridge is on the opposite side, the airport is wider than an aircraft carrier, etc.

All airports are only available in north heading.

| Aircraft carrier | Size of OpenTTD airport | Available dates | Catchment | Infrastructure Cost |
| --- | --- | --- | --- | --- |
| USS Intrepid (CV-11) | small 4x3 | 1941-1974 | 5 | 28 |
| HMS Eagle (R05) | small 4x3 | 1951-1972 | 5 | 30 |
| USS Enterprise (CVAN-65) | small 4x3 | 1961-2012 | 6 | 50 |
| Charles de Gaule (R91) | small 4x3 | 2000-2040 | 6 | 38 |



Airplanes available in set:

| Name | Type | Game type | Intro date | Model life | Speed in km/h | Range | 
| --- | --- | --- | --- | --- | ---: | ---: |
| Fighters |||||||
| Avro 504 | fighter | small | 1913 | 19  | 153 | 80 |
| Nieuport-Delage NiD 29 | fighter | small | 1918 | 10 | 235 | 116 |
| Hawker Hurricane IIC | fighter | small | 1935 | 9 | 550 | 194 |
| Grumman F6F Hellcat | fighter | small | 1942 | 4 | 629 | 492 |
| North American F-86 Sabre | fighter | small | 1949 | 8 | 1 106 | 491 |
| Dassault Mirage III | fighter, IIIM carrier-based| small | 1956 | 24 | 2 350 | 667 |
| McDonnell F-4 Phantom II | carrier based fighter, bomber | small | 1958 | 24 | 2 370 | 540 |
| General Dynamics F-16 Fighting Falcon | multirole fighter | small | 1976 | 55 | 2 124 | 840 |
| Dassault Mirage 2000 | fighter | small | 1978 | 29 | 2 336 | 667 |
| McDonnell Douglas F/A-18 Hornet | carrier-based fighter and attacker | small | 1980 | 53 | 1 915 | 403 |
| Saab JAS 39 Gripen | multirole fighter | small | 1989 | 50 | 2 460 | 640 |
| Dassault Rafale | multirole fighter, M carrier-based | small | 1991 | 40 | 1 912 | 740 |
| Lockheed Martin F-35A Lightning II | multirole combat aircraft | small | 2006 | 34 | 1 930 | 560 |
| Transport / Airlifters |||||||||
| Douglas C-74 Globemaster | heavy lift cargo aircraft | small | 1945 | 2 | 528 | 1 100 |
| Douglas C-124 Globemaster II | heavy lift cargo aircraft | small | 1949 | 6 | 489 | 1 298 |
| Lockheed C-141 Starlifter | strategic airlifter | small | 1963 | 5 | 912 | 945 |
| Lockheed C-5 Galaxy | large military transport aircraft | large | 1968 | 21 | 856 | 852 |
| Boeing C-17 Globemaster III | large military transport aircraft | small | 1991 | 24 | 1 080 | 896 |
| Airbus A400M Atlas | military transport aircraft | small | 2009 | 30 | 858 | 660 |
| Reconnaissance |||||||||
| Northrop Grumman RQ-4 Global Hawk | remotely-piloted surveillance aircraft | small | 1998 | 40 | 609 | 4 560 |
| Lockheed Martin RQ-170 Sentinel | unmanned aerial vehicle | small | 2007 | 30 | 710 | 2 000 |
| | | | | | | |

## Requests

If you like a particular vehicle to be added to the set, you can make a 
request for that. Post your request in the development topic at 	
TT-Forums.net (https://www.tt-forums.net/viewtopic.php?f=26&t=88858) 
and preferably also to the issue tracker at the github repository 
(https://github.com/adpro/openttd-military-grf/issues) such that the 
request is not lost.

To avoid disappointment, consider the following rules for requests:
- The manufacturer and model must not already be present in the set;
- If the manufacturer is present in the set, the model must fill a 
  regional or time frame gap;
- Sufficient information must be available to draw and code the vehicle;
- The development team and author reserves the right to interpret these rules more 
  like guidelines.

## Translations

Graphic set support these translations:

- English
- Czech

There are only one way how to add new translation - add pull request to github repository.


## Useful links

TT-forums topic: *will be edit soon after first entry in topic*


## Obtaining the source

The source code can be obtained via git checkout

    git clone https://github.com/adpro/openttd-military-grf
	

## Credits

Project management: adpro
Graphics design: adpro
Code programming: adpro
Makefile development: adpro

Thanks go out to #openttdcoop and Richard Wheeler for [PixelTool](http://bundles.openttdcoop.org/pixeltool/push/LATEST/).

Special thanks to OpenTTD community for wiki, NML tutorial and many other sources.

## License

Military Items - military airplanes and other vehicles in 2CC for OpenTTD
Copyright (C) 2021 adpro

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this NewGRF; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.