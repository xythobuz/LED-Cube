/*
 * unixHelper.c
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
#include <stdlib.h>
#include <stdio.h>

#ifdef winHelper
#include "helper/winSerial.c"
#else
#include "helper/unixSerial.c"
#endif

char *fileData = NULL;

void removeFromBeginning(size_t size, size_t remove);
size_t readFile(char *path);
size_t getFileSize(FILE *fp);

/*
Return values:
0: Success
1: Usage error
2: Serial Port Error
3: Data File Error
*/
int main(int argc, char *argv[]) {
	size_t length, written;
	
	if (argc < 3) {
#ifdef winHelper
		printf("Usage:\n%s COM1 C:\\file\\to\\send.txt\n", argv[0]);
#else
		printf("Usage:\n%s /dev/SerialPort /file/to/send\n", argv[0]);
#endif
		return 1;
	} else {
		if (serialOpen(argv[1]) != 0) {
			printf("Error: Could not open %s\n", argv[1]);
			return 2;
		}

		length = readFile(argv[2]);
		if (length == 0) {
			printf("Error while reading %s\n", argv[2]);
			return 3;
		}

		written = serialWrite(fileData, length);
		while (written < length) {
			removeFromBeginning(length, written);
			length -= written;
			written = serialWrite(fileData, length);
		}

		free(fileData);
		fileData = NULL;
		serialClose();
		return 0;
	}
}

void removeFromBeginning(size_t size, size_t remove) {
	size_t i;
	char *tmp = (char *)malloc((size - remove) * sizeof(char));

	for (i = 0; i < (size - remove); i++) {
		tmp[i] = fileData[i + remove];
	}
	free(fileData);
	fileData = tmp;
}

size_t readFile(char *path) {
	size_t size, i;
	FILE *fp;

	fp = fopen(path, "r");
	if (!fp) {
		return 0;
	}

	size = getFileSize(fp);
	fileData = (char *)malloc(size * sizeof(char));
	for (i = 0; i < size; i++) {
		fileData[i] = fgetc(fp);
	}

	fclose(fp);
	return size;
}

size_t getFileSize(FILE *fp) {
	size_t size = 0;
	int c;

	fseek(fp, 0, 0); // Set file pointer to beginning
	
	do { // Calculate size
		c = fgetc(fp);
		size++;
	} while (c != EOF);
	size--;
	
	fseek(fp, 0, 0);

	return size;
}
