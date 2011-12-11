# 8x8x8 LED Cube

8x8x8 Single Color LED Cube built with an AtMega32.

## Hardware

You can find the schematic as png and Eagle file in this directory.

## Firmware

The firmware of the Controller is yet to be developed...
It will use [Peter Fleury's UART and TWI Library](http://homepage.hispeed.ch/peterfleury/avr-software.html).

## Cube Control

We also build a software to create and load animations into the cube. This software is written in Java and C and is Compatible between Windows and Unix.
It's source is in the "Cube Control" directory. It has it's own makefile, in which you can specify the Target OS. "unix" means any Unix like OS (Linux, OS X...), "win" means Windows.
You obviously need a working JDK and a C Compiler Environment (we use gcc).
