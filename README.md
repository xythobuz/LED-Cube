# 8x8x8 LED Cube

8x8x8 Single Color LED Cube built with an AtMega32.

## Hardware

You can find the schematic as png and Eagle file in this directory.

## Firmware

The firmware of the Controller is yet to be developed...
It will use [Peter Fleury's UART and TWI Library](http://homepage.hispeed.ch/peterfleury/avr-software.html).

## Cube Control

We also build a software to create and load animations into the cube. This software is written in Java and C and should work on Windows and Unix.
It's source is in the "Cube Control" directory.

## Build instructions

There is a makefile in every source code directory. Running make inside CubeControl should produce a file called CubeControlMac.jar, CubeControlLinux.jar or CubeControlWin.jar. If not, you should take a look at the makefile. Hard-Coded include directorys are probably different than on your system... You obviously need a working JDK and a C Compiler Environment (we use gcc).
CubeControls makefile will autodetect a Windows Host and compile a Windows Version accordingly. If it is not on Windows, it will check uname and compile a Mac Version if Darwin is reported as OS name. A Linux Version will be compiled if no Darwin OS was detected.

The same goes for AudioFirmware and CubeFirmware. You need avr-gcc to compile these projects.
