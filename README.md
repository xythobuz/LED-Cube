# 8x8x8 LED Cube

8x8x8 Single Color LED Cube built with an AtMega32.

## Hardware

This LED-Cube uses an AtMega32 for displaying animations and an AtMega8 for Audio Visualizations. I first built the Circuit on a 160x100mm hole-grid board. This was very cumbersome, so I created a dual-sided PCB Layout with SMD Parts. You can find this Layout and the Schematic in the Hardware folder, as PNGs and Eagle files. There's also a partlist.

## CubeFirmware

CubeFirmware controls the AtMega32, which in turn displays images and communicates over USB. It's in the CubeFirmware folder. Compile with avr-gcc, using the makefile (just run 'make').

## AudioFirmware

This firmware controls the AtMega8, which interfaces the MSGEQ7 to get sound data. It is addressed by the CubeFirmware as a TWI-Slave.

## CubeControl

CubeControl is a PC software, written in Java and mostly platform-independent, to create Animations for the Cube and send them to it. It depends on [Java3D](http://www.oracle.com/technetwork/java/javase/tech/index-jsp-138252.html) to display a rotatable, clickable 3D View of the LED-Cube. It comes with it's own Serial Library to communicate with the Cube. Compile it with the makefile. You need a working javac and gcc in your Path. To compile under windows get something like [MinGW](http://www.mingw.org/) or try Microsofts compiler.

## HardwareEmulator

Run this in a Unixoid OS to test CubeControls up-/download capabilites.

## UploadTest

Allows you to send test data or aniamtions saved by CubeControl to the Cube.

## License

See the included LICENSE file. This software is released as GPLv3. It incorporates some code from Peter Danneger (a [button debounce routine](http://www.mikrocontroller.net/articles/Entprellung#Debounce-Makro_von_Peter_Dannegger)) and Peter Fleury ([TWI Library](http://homepage.hispeed.ch/peterfleury/avr-software.html)).