# xinagg360

## What is this?
This project aims to take any **xin**put and **agg**regate them into an emulated xbox **360** controller (xinagg360 for short).


## But why?
I created this for my other project [emuCenter](https://github.com/Maxsafer/emuCenter) and decided to release a standalone script since it has helped me with specific scenarios outside of emulation.

One example being Assassin's Creed II, this game is old and won't function correctly with some modern controllers even though they are xinput compatible. This fixes that.

## Dependencies
- Tested on Python 3.12.0 - Most likely works on all newer versions and some older ones
- [ViGEmBus](https://github.com/nefarius/ViGEmBus)_1.22.0 by [nefarius](https://github.com/nefarius) - Only tested the version **included in this repo**
- [vgamepad](https://github.com/yannbouteiller/vgamepad) by [yannbouteiller](https://github.com/yannbouteiller) - **Included in this repo**

## Installation
- Install Python3
- Install ViGEmBus_1.22.0_x64_x86_arm64.exe

## How to run
### start.bat
I have provided 2 bat files  to start this script:
- `start.bat`
- `./dist/start.bat`

For `start.bat` just double click it from the project directory (or create a shortcut) and the emulated controller will appear, to disconnect it just close the script window. You could potentially modify this batch to launch your desired game as well. Here's a generic example:
```
start "xinagg360-ACII" "D:\Ubisoft\Assassin's Creed II\AssassinsCreedIIGame.exe"
```
You can also use `./dist/start.bat` for a more automated solution like `start.exe → start.bat → Game.exe` I get into the details in the [xinagg360.exe section](https://github.com/Maxsafer/xinagg360?tab=readme-ov-file#xinagg360exe).

### CLI
The script has parameters in case you want to mess with it e.g.
```
python xinagg360.py --poll-hz 500 --idle-hold-ms 750 --deadzone 7000 --trigger-deadzone 10
```

### xinagg360.exe
I added `xinagg360.exe` in `./dist` folder and can be dragged anywhere. When launched it shows a terminal window saying the emulated controller is currently working, on close it stops the controller.

>I'm currently trying to make a `dll` that will execute this `exe` automatically when the game launches. The `dll` kinda works, but I will not publish those files until it works 100%.

If you want an automatic solution, for now you can drop `start.exe`, `start.bat` and `xinagg360.exe` from the `./dist` folder to your game folder.

Launch `start.exe` through a shortcut or from your game platform with the game executable file name as the parameter (it all should be on the same root folder), e.g.
```
D:\Ubisoft\Assassin's Creed II\start.exe AssassinsCreedIIGame.exe
```