/*
 * strings.c
 *
 * Copyright 2012 Thomas Buck <xythobuz@me.com>
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

const char stringVersion[] PROGMEM = "v2.5\n"; // 0
const char stringSelfTestError[] PROGMEM = "Self-Test Error: 0b"; // 1
const char stringInit[] PROGMEM = "Initialized: "; // 2
const char stringAudioError[] PROGMEM = " => No answer from Audio!\n"; // 3
const char stringMemError[] PROGMEM = " => No answer from Memory!\n"; // 4
const char stringMemWriteError[] PROGMEM = " => Can't write to Memory!\n"; // 5
const char stringHelp1[] PROGMEM = "(d)elete, (g)et anims, (s)et anims, (v)ersion\n"; // 6
const char stringHelp2[] PROGMEM = "(t)ime, (a)udio, (c)ount, (x)Custom count\n"; // 7
const char stringHelp3[] PROGMEM = "(y)Set a frame, sim(p)le anim\n"; // 8
const char stringHelp4[] PROGMEM = "t(e)st, (m)ode, d(u)mp\n"; // 9
const char stringHelp5[] PROGMEM = "Play S(n)ake\n"; // 10
const char stringHelp6[] PROGMEM = "All LEDs Off/On (0/1)\n"; // 11
const char stringHelp7[] PROGMEM = "(2): Test Anim. 1\n"; // 12
const char stringHelp8[] PROGMEM = "(3): All Surface LEDs on\n"; // 13
const char stringTime[] PROGMEM = "System Time: "; // 14
const char stringFrames[] PROGMEM = " Frames stored\n"; // 15
const char stringByte[] PROGMEM = "New animation count: "; // 16
const char stringWritten[] PROGMEM = "durati(o)n"; // 17
const char stringCount[] PROGMEM = "Frame to change: "; // 18
const char stringSelfTest[] PROGMEM = "Self-Test: 0b"; // 19
const char stringKillCount[] PROGMEM = "Killed Animation Counter!\n"; // 20
const char stringAccessError[] PROGMEM = "Could not access device!\n"; // 21
const char stringAudioData[] PROGMEM = "Audio Data:\n"; // 22
const char stringSnakeControl[] PROGMEM = "Controls: W A S D Q E, x to quit\n"; // 23
const char stringNoMoreHeap[] PROGMEM = "Ran out of Heap!\n"; // 24
const char stringKilledAnimation[] PROGMEM = "Animation aborted!\n"; // 25
const char stringHelp9[] PROGMEM = "(i)nterrupt count, (r)andom, (q)reset\n"; // 26
const char stringInterrupts[] PROGMEM = " Interrupts after 1000msec\n"; // 27
const char stringFrames2[] PROGMEM = " Frames per Second\n"; // 28
const char stringDeleted[] PROGMEM = "Memory deleted!\n"; // 29
const char stringReset[] PROGMEM = "Reset in 500ms. Bye!\n"; // 30
const char stringWatchdog[] PROGMEM = "Enter frame to dump: "; // 31
const char stringBrownout[] PROGMEM = "Formatting memory... "; // 32
const char stringNothing[] PROGMEM = "Done!\n"; // 33
const char stringExtern[] PROGMEM = "(f)ormat memory\n"; // 34
const char stringJtag[] PROGMEM = "Duration: "; // 35
const char stringPowerOn[] PROGMEM = "Start: "; // 36
const char stringMinute[] PROGMEM = "8 Layerbytes...\n"; // 37
const char stringAudioMode[] PROGMEM = "Storing in 8 frames...\n"; // 38
const char stringCubeMode[] PROGMEM = "Ende: "; // 39
const char stringModeChange[] PROGMEM = "Cube mode entered!\n"; // 40
const char stringModeChange2[] PROGMEM = "Audio mode entered!\n"; // 41

// Last index + 1
#define STRINGNUM 42

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
								stringCubeMode, stringModeChange, stringModeChange2 };

char stringNotFoundError[] PROGMEM = "String not found!\n";

char *getString(uint8_t id) {
	if (id < STRINGNUM) {
		strcpy_P(buffer, (PGM_P)pgm_read_word(&(stringTable[id])));
	} else {
		strcpy_P(buffer, (PGM_P)pgm_read_word(&stringNotFoundError));
	}
	return buffer;
}