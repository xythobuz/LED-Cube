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

int main() {
	int byte;

	printf("uint8_t lookUp[256] = {");
	for (byte = 0; byte < 256; byte++) {
		printf(" %d", flipAdjacent(flip(byte));
		if (((byte % 10) == 0) && (byte > 0)) {
			printf(",\n");
		} else if (byte < 255) {
			printf(", ");
		}
	}
	printf(" }\n");
	return 0;
}
