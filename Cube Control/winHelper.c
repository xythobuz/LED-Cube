/*
 * By: Thomas Buck <taucher.bodensee@gmail.com>
 * Visit: www.xythobuz.org
 */
#include <stdlib.h>
#include <stdio.h>
#include "helper/winSerial.c"

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
		printf("Usage:\n%s COM1 C:\\file\\to\\send.txt\n", argv[0]);
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
	
	fseek(fp, 0, 0);

	return size;
}
