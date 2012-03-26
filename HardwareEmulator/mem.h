/*
 * mem.c - HardwareEmulator
 * frame is represented as 65 bytes.
 * 0 - 63: frame data
 * 64: duration, 0 => 1/24th second
 */

// return != 0 if error
int addFrame(char *frame);

// returns NULL if error
char *getFrame(int index);

int framesStored();

void clearMemory();