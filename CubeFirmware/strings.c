/*
 * strings.c
 *
 * Copyright 2011 Thomas Buck <xythobuz@me.com>
 * Copyright 2011 Max Nuding <max.nuding@gmail.com>
 * Copyright 2011 Felix Bäder <baeder.felix@gmail.com>
 *
 * This file is part of LED-Cube.
 *
 * LED-Cube is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * LED-Cube is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with LED-Cube.  If not, see <http://www.gnu.org/licenses/>.
 */
#include <avr/pgmspace.h>

char buffer[60];

#ifdef DEBUG
char stringVersion[] PROGMEM = "v2.3 Debug Build\nPROBABLY NOT COMPATIBLE WITH CubeControl Software!\n"; // 0
#else
char stringVersion[] PROGMEM = "v2.3 Release\n"; // 0
#endif

char stringInit[] PROGMEM = "\nInitialized: "; // 1
char stringSelfTestError[] PROGMEM = "Self-Test Error: 0b"; // 2
char stringAudioError[] PROGMEM = " => No answer from Audio!\n"; // 3
char stringMemError[] PROGMEM = " => No answer from Memory!\n"; // 4
char stringMemWriteError[] PROGMEM = " => Can't write to Memory!\n"; // 5
char stringHelp1[] PROGMEM = "(d)elete, (g)et anims, (s)et anims, (v)ersion\n"; // 6
char stringHelp2[] PROGMEM = "(t)ime, (a)udio, (c)ount, (x)Custom count\n"; // 7
char stringHelp3[] PROGMEM = "(y)Set fixed animation count\n"; // 8
char stringHelp4[] PROGMEM = "S(e)lf Test, (m)ode\n"; // 9
char stringHelp5[] PROGMEM = "Play S(n)ake\n"; // 10
char stringHelp6[] PROGMEM = "(0): All LEDs Off\n"; // 11
char stringHelp7[] PROGMEM = "(1): All LEDs On\n"; // 12
char stringHelp8[] PROGMEM = "(2): Test Anim. 1\n"; // 13
char stringTime[] PROGMEM = "System Time: "; // 14
char stringFrames[] PROGMEM = " Frames stored\n"; // 15
char stringByte[] PROGMEM = "Send a byte... "; // 16
char stringWritten[] PROGMEM = " written!\n"; // 17
char stringCount[] PROGMEM = "Animation count now 8705!\n"; // 18
char stringSelfTest[] PROGMEM = "Self-Test: 0b"; // 19
char stringKillCount[] PROGMEM = "Killed Animation Counter!\n"; // 20
char stringAccessError[] PROGMEM = "Could not access device!\n"; // 21
char stringAudioData[] PROGMEM = "Audio Data:\n"; // 22
char stringSnakeControl[] PROGMEM = "Controls: W A S D Q E, x to quit\n"; // 23
char stringNoMoreHeap[] PROGMEM = "Ran out of Heap!\n"; // 24
char stringKilledAnimation[] PROGMEM = "Animation aborted!\n"; // 25
char stringHelp9[] PROGMEM = "(i)nterrupt count, (r)andom, (q)reset\n"; // 26
char stringInterrupts[] PROGMEM = " Interrupts after 1000msec\n"; // 27
char stringFrames2[] PROGMEM = " Frames per Second\n"; // 28
char stringDeleted[] PROGMEM = "Memory deleted!\n"; // 29
char stringReset[] PROGMEM = "Reset in 500ms. Bye!\n"; // 30
char stringWatchdog[] PROGMEM = "Watchdog Reset detected.\n"; // 31
char stringBrownout[] PROGMEM = "Brown-Out Reset detected.\n"; // 32
char stringNothing[] PROGMEM = "No Reset reason detected.\n"; // 33
char stringExtern[] PROGMEM = "External Reset detected.\n"; // 34
char stringJtag[] PROGMEM = "JTAG Reset detected.\n"; // 35
char stringPowerOn[] PROGMEM = "Power-On Reset detected.\n"; // 36
char stringMinute[] PROGMEM = "Yay! Another minute passed :)\n"; // 37
char stringAudioMode[] PROGMEM = "Audio Mode!\n"; // 38
char stringCubeMode[] PROGMEM = "Cube Mode!\n"; // 39
char stringModeChange[] PROGMEM = "Cube mode changed!\n";

// Last index + 1
#define STRINGNUM 41

PGM_P stringTable[STRINGNUM] PROGMEM = { stringVersion, stringSelfTestError, stringInit,
								stringAudioError, stringMemError, stringMemWriteError,
								stringHelp1, stringHelp2, stringHelp3, stringHelp4, stringHelp5,
								stringHelp6, stringHelp7, stringHelp8, stringTime, stringFrames,
								stringByte, stringWritten, stringCount, stringSelfTest,
								stringKillCount, stringAccessError, stringAudioData,
								stringSnakeControl, stringNoMoreHeap, stringKilledAnimation,
								stringHelp9, stringInterrupts, stringFrames2, stringDeleted,
								stringReset, stringWatchdog, stringBrownout, stringNothing,
								stringExtern, stringJtag, stringPowerOn, stringMinute, stringAudioMode,
								stringCubeMode, stringModeChange };

char stringNotFoundError[] PROGMEM = "String not found!\n";

char *getString(uint8_t id) {
	if (id < STRINGNUM) {
		strcpy_P(buffer, (PGM_P)pgm_read_word(&(stringTable[id])));
	} else {
		strcpy_P(buffer, (PGM_P)pgm_read_word(&stringNotFoundError));
	}
	return buffer;
}