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
void usage(char *name);
int parseNumber(char *s);
int power(int num, int pow);
void printFileData(size_t size);
void printSerialPorts(char ** ports);

/*
Return values:
0: Success
1: Usage error
2: Serial Port Error
3: Data File Error
*/

int main(int argc, char *argv[]) {
	size_t length, written;

		// printf("Debugging Worker... Ignore me!\n");

		if (argc < 2) {
			usage(argv[0]);
			return 1;
		}

		if (argv[1][0] == 'p') {

			if (argc != 2) {
				usage(argv[0]);
				return 1;
			}
			char** ports = getSerialPorts();
			printSerialPorts(ports);
			free(ports);
			return 0;

		} else if (argv[1][0] == 'w') {

			if (argc != 4) {
				usage(argv[0]);
				return 1;
			}
			if (serialOpen(argv[2]) != 0) {
				printf("Error: Could not open %s\n", argv[1]);
				return 2;
			}
			// write file to com port
			length = readFile(argv[3]);
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

		} else if (argv[1][0] == 'r') {

			if (argc != 4) {
				usage(argv[0]);
				return 1;
			}
			if (serialOpen(argv[2]) != 0) {
				printf("Error: Could not open %s\n", argv[1]);
				return 2;
			}
			// Read from com port to file
			if (argc < 5) {
				printf("No size given. ");
				usage(argv[0]);
				return 1;
			}
			
			length = parseNumber(argv[3]);
			fileData = (char *)malloc(length * sizeof(char));
			// fill fileData with serial Port data
			written = 0;
			while (written < length) {
				written = serialRead(fileData + written, length - written);
			}

			printFileData(length);

		} else {
			printf("Unrecognized Option: %s\n", argv[1]);
			usage(argv[0]);
			return 1;
		}

		free(fileData);
		fileData = NULL;
		serialClose();
		return 0;
	// }
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

void usage(char *name) {
#ifdef winHelper
	printf("Usage:\n%s r|w|p [COM1 [C:\\file\\to\\send.txt] [sizeToRead]]\n", name);
#else
	printf("Usage:\n%s r|w|p [/dev/SerialPort [/file/to/send] [sizeToRead]]\n", name);
#endif
}

int parseNumber(char *s) {
	int i, size = 0, result = 0;
	while (*(s++) != '\0') {
		size++;
	}
	for (i = 0; i < size; i++) {
		result += (s[i] - '0') * power(10, (size - i));
	}
	return result;
}

int power(int num, int pow) {
	int result = 1;
	while (pow > 0) {
		result *= num;
		pow--;
	}
	return result;
}

void printFileData(size_t size) {
	int i;
	for (i = 0; i < size; i++) {
		printf("%x", fileData[i]);
		if (i % 8 == 0) {
			printf("\n");
		}
	}
}

void printSerialPorts(char ** ports) {
	int i = 0;
	while (ports[i] != NULL) {
		printf("%s\n", ports[i]);
		i++;
	}
}

