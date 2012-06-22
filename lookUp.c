#include <stdio.h>

int flip(int d) {
	int n;
	int converted = 0;
	for (n = 0; n < 8; n++) {
		if (d & (1 << (7 - n))) {
			converted |= (1 << n);
		}
	}
	return converted;
}

int flipAdjacent(int d) {
	int n;
	int converted = 0;

	for (n = 0; n < 7; n+= 2) {
		if (d & (1 << n)) {
			converted |= (1 << (n + 1));
		} else {
			converted &= ~(1 << (n + 1));
		}
		if (d & (1 << (n + 1))) {
			converted |= (1 << n);
		} else {
			converted &= ~(1 << n);
		}
	}
	return converted;
}

void main() {
	int byte;
	int converted;

	printf("penis = {");
	
	for (byte = 0; byte < 256; byte++) {
		converted = flip(byte);
		converted = flipAdjacent(converted);

		printf(" %d", converted);
		if (((byte % 10) == 0) && (byte > 0)) {
			printf(",\n");
		} else if (byte < 255) {
			printf(", ");
		}
	}
	printf(" }\n");
}
