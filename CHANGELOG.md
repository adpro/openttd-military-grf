# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

You can find these types of changes:

- *Added* for new features.
- *Changed* for changes in existing functionality.
- *Deprecated* for soon-to-be removed features.
- *Removed* for now removed features.
- *Fixed* for any bug fixes.
- *Security* in case of vulnerabilities.


## [0.6.0] "Czechoslovakian Wings" - 2021-07-11

### Added
- Avia B.3 airplane in 4 liveries
- Aero A.18 airplane in 4 liveries
- Avia B.21 airplane in 4 liveries
- Avia Ba.33 airplane in 4 liveries
- Avia B.534 airplane in 4 liveries
- Aero A.304 airplane in 4 liveries
- Avia B.35 airplane in 4 liveries
- Letov Š.328 airplane in 4 liveries
- Zlín Z.12 airplane in 4 liveries
- Avia S-199 airplane in 4 liveries
- Aero K-75 airplane in 4 liveries
- Aero S-103 airplane in 4 liveries
- Aero S-105 airplane in 4 liveries
- Aero L-29 airplane in 4 liveries
- Aero L-39 airplane in 4 liveries
- Aero L-39NG airplane in 4 liveries
- Aero L-159 airplane in 4 liveries
- Let L-410 airplane in 4 liveries
- Let L-410NG airplane in 4 liveries
- Parameter to choose which Czechoslovakian aircraft to use in game

### Changed
- Rebalanced purchase and running costs for all aircraft
- Adjusted the hue of the company colours for european planes
- Adjusted the hue of the company colours for russian planes
- Adjusted the hue of the company colours for u.s. planes
- XCF source files reorganization
- JSON source files reorganization


## [0.5.0] "Red Wings" - 2021-06-26
### Added
- Polikarpov I-16 airplane
- Yakovlev Yak-9 airplane
- Mikoyan-Gurevich MiG-15 airplane
- Mikoyan-Gurevich MiG-19 airplane
- Mikoyan-Gurevich MiG-21 airplane
- Mikoyan-Gurevich MiG-29 airplane
- Sukhoi Su-30 airplane
- Sukhoi Su-57 airplane
- Antonov An-2 airplane
- Antonov An-12 airplane
- Antonov An-22 airplane
- Antonov An-24 airplane
- Antonov An-26 airplane
- Ilyushin Il-76 airplane
- Parameters to choose which aircraft to use in game
- Parameter which airports to use in game
- CSV version of Numbers spreadsheet

### Changed
- Aircraft source file reorganization
- NML spritesets moved to templates

## [0.4.0] "Aircraft Carriers" - 2021-06-06

### Added
- Grumman F6F Hellcat aircraft
- Hawker Sea Hawk aircraft
- Grumman C-2 Greyhound aircraft
- Bell UH-1 Iroquois / HU-1 "Huey" helicopter
- small airport USS Intrepid CV-11 1943 carrier
- small airport HMS Eagle R05 1956 carrier
- small airport USS Enterprise CVAN-65 1980 carrier
- small airport Charles de Gaulle R91 200 carrier
- city airport Air Force Base
- GRF parameter for aircraft range
- GRF parameter to disable airport dates restrictions

### Changed
- Purchase and operating costs changed according to the World Airliner Set
- Remove version from GRF file in Makefile
- Changes in PixelTools' JSON source files locations

### Fixed
- Description of aircraft

## [0.3.0] "North & West" - 2021-05-13

### Added
- Dassault Mirage III aircraft
- Nieuport-Delage NiD 29 aircraft
- Dassault Mirage 2000 aircraft (with loading sprite set)
- Saab JAS 39 Gripen (with loading sprite set)
- Dassault Rafale aircraft (with loading sprite set)
- Lockheed Martin RQ-170 Sentinel

### Changed
- Sorting for airplanes by aircraft type and introduction year

## [0.2.0] "Airlift" - 2021-05-10

### Added
- Lockheed C-5 Galaxy aircraft
- McDonnell Douglas/Boeing C-17 Globemaster III aircraft
- Douglas C-74 Globemaster aircraft
- Douglas C-124 Globemaster II "Old Shaky" aircraft
- Lockheed C-141 Starlifter aircraft
- Airbus A-400M aircraft
- More info about airplane in purchase menu
- Spreadsheet with airplanes from Apple Numbers app

### Changed
- Add range to all aircraft
- Move to partial nml files (pnml) and gcc preprocessor from coding in one NML file.

## [0.1.0] "Fighters" - 2021-05-07
### Added
- Avro 504 aircraft.
- Hawker Hurricane IIC aircraft.
- McDonnell F-4 Phantom II aircraft.
- North American F-86 Sabre aircraft.
- General Dynamics F-16 Fighting Falcon aircraft.
- McDonnell Douglas F/A-18 Hornet aircraft.
- Lockheed Martin F-35A Lightning II aircraft.
- Northrop Grumman RQ-4 Global Hawk aircraft.
- Basic airplanes cost balance according to OpenTTD base set.
- README with useful information about project.
- Makefile for simple workflow.
- LICENSE file with GNU GPL v2 license.
- English translation from [@adpro](https://github.com/adpro).
- Czech translation from [@adpro](https://github.com/adpro).

[Unreleased]: https://github.com/adpro/openttd-military-grf/compare/v0.6.0...HEAD
[0.6.0]: https://github.com/adpro/openttd-military-grf/compare/v0.5.0...v0.6.0
[0.5.0]: https://github.com/adpro/openttd-military-grf/compare/v0.4.0...v0.5.0
[0.4.0]: https://github.com/adpro/openttd-military-grf/compare/v0.3.0...v0.4.0
[0.3.0]: https://github.com/adpro/openttd-military-grf/compare/v0.2.0...v0.3.0
[0.2.0]: https://github.com/adpro/openttd-military-grf/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/adpro/openttd-military-grf/releases/tag/v0.1.0
