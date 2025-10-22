# xinagg360

## What is this?
This project aims to take any **xin**put and **agg**regate them into an emulated xbox **360** controller (xinagg360 for short).


## But why?
I created this for my other project [emuCenter](https://github.com/Maxsafer/emuCenter) and decided to release a standalone script since it has helped me with specific scenarios outside of emulation.

One example being Assassin's Creed II, this game is old and wont function correctly with some modern controllers even though they are xinput compatible. This fixes that.

## Dependencies
- Tested on Python 3.12.0 - Most likely works on all newer versions and some older ones
- [ViGEmBus](https://github.com/nefarius/ViGEmBus)_1.22.0 by [nefarius](https://github.com/nefarius) - Only tested the version **included in this repo**
- [vgamepad](https://github.com/yannbouteiller/vgamepad) by [yannbouteiller](https://github.com/yannbouteiller) - **Included in this repo**

## Installation
- Install Python3
- Install ViGEmBus_1.22.0_x64_x86_arm64.exe

## How to run
### start.bat
I have provided the bat file I personally use to start this script, just double click it from the project directory (or create a shortcut) and the emulated controller will appear, to disconnect it just close the script window.

### CLI
The script has parameters in case you want to mess with it e.g.
```
python xinagg360.py --poll-hz 500 --idle-hold-ms 750 --deadzone 7000 --trigger-deadzone 10
```