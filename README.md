# 8x8x8 LED Cube

8x8x8 Single Color LED Cube built with an AtMega32.

## Building the Software

You need an AVR GCC Toolchain (eg. WinAVR) to compile both AVR firmwares. You need a C Compiler for your computer (only gcc tested, others should work) and a recent JDK with Java3D to build the PC Software, CubeControl. It should work on Windows, Mac OS X and Linux. To compile a project, just enter it's directory and run make. If you get errors compiling CubeControl, try changing the hard-coded JDK paths in the libSerial makefile, found in CubeControl/libSerial.

## Hardware

This LED-Cube uses an AtMega32 for displaying animations and an AtMega8 for Audio Visualizations. I first built the Circuit on a 160x100mm hole-grid board. This was very cumbersome, so I created a dual-sided PCB Layout with SMD Parts. You can find this Layout and the Schematic in the Hardware folder, as PNGs and Eagle files. There's also a partlist.

## Software

### CubeFirmware

CubeFirmware controls the AtMega32, which in turn displays images and communicates over USB. It's in the CubeFirmware folder. Compile with avr-gcc, using the makefile (just run 'make').

### AudioFirmware

This firmware controls the AtMega8, which interfaces the MSGEQ7 to get sound data. It is addressed by the CubeFirmware as a TWI-Slave. Compile it like CubeFirmware.

### CubeControl

CubeControl is a PC software, written in Java and mostly platform-independent, to create Animations for the Cube and send them to it. It depends on [Java3D](http://www.oracle.com/technetwork/java/javase/tech/index-jsp-138252.html) to display a rotatable, clickable 3D View of the LED-Cube. It comes with it's own Serial Library to communicate with the Cube. Compile it with the makefile. You need a working javac and gcc in your Path. To compile under windows get something like [MinGW](http://www.mingw.org/) or try Microsofts compiler.
A more or less recent Version of CubeControl can be found as CubeControl.jar. It includes a Mac and a Windows Version of the serial driver, so it is compatible with both of these platforms.

### HardwareEmulator

Allows you to test CubeControls up-/download capabilites. Unix only!

### UploadTest

Allows you to send test data or animations saved by CubeControl to the Cube. Unix only!

## License

See the included LICENSE file. This software is released as GPLv3. It incorporates some code from Peter Danneger (a [button debounce routine](http://www.mikrocontroller.net/articles/Entprellung#Debounce-Makro_von_Peter_Dannegger)) and Peter Fleury ([TWI Library](http://homepage.hispeed.ch/peterfleury/avr-software.html)).