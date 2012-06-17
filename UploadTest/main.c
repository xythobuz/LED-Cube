#include <stdio.h>
#include <stdlib.h>
#include <strings.h>

#include "serial.h"

#define OK 0x42
#define ERROR 0x23

void readAck(void);
int serialWriteString(char *s);
int serialReadTry(char *data, size_t length);
int serialWriteTry(char *data, size_t length);
void intHandler(int dummy);

volatile int keepRunning = 1;

#define suicide intHandler(0)

int main(int argc, char *argv[]) {
	char c;
	int i, f;
	
	if (argc != 2) {
		printf("Usage: %s /dev/port\n", argv[0]);
		return 0;
	}

	if (serialOpen(argv[1]) != 0) {
		printf("Could not open port: %s\n", argv[1]);
		return 0;
	}

	signal(SIGINT, intHandler);
	signal(SIGQUIT, intHandler);

	printf("Port opened. Sending test data:\n");

	printf("\tSending command 's'...");
	c = 's';
	if (serialWriteTry(&c, 1) != 0) {
		printf(" Could not send it!\n");
		suicide;
	}
	printf(" Success!\n");

	readAck();

	printf("\tSending anim count (1)...");
	c = 1;
	if (serialWriteTry(&c, 1) != 0) {
		printf(" Could not send it!\n");
		suicide;
	}
	printf(" Success!\n");

	readAck();

	printf("\tSending frame count (2)...");
	c = 2;
	if (serialWriteTry(&c, 1) != 0) {
		printf(" Could not send it!\n");
		suicide;
	}
	printf(" Success!\n");

	readAck();

	for (f = 0; f < 2; f++) {
		printf("\tSending duration (3)...");
		c = 3;
		if (serialWriteTry(&c, 1) != 0) {
			printf(" Could not send it!\n");
			suicide;
		}
		printf(" Success!\n");

		readAck();

		printf("\tSending data");
		
		if (f == 0) {
			for(i = 0; i < 64; i++) {
				c = (char)i; // Some test data
				if (serialWriteTry(&c, 1) != 0) {
					printf(" Error while sending!\n");
					suicide;
				} else {
					printf(".");
				}
			}
			printf(" Success!\n");
		} else {
			for(i = 0; i < 64; i++) {
				c = (char)63 - i; // Some test data
				if (serialWriteTry(&c, 1) != 0) {
					printf(" Error while sending!\n");
					suicide;
				} else {
					printf(".");
				}
			}
			printf(" Success!\n");
		}

		readAck();
	}

	printf("\tSending end sequence");
	for (i = 0; i < 4; i++) {
		// Send 4 OKs
		c = OK;
		if (serialWriteTry(&c, 1) != 0) {
			printf(" Error while sending!\n");
			suicide;
		} else {
			printf(".");
		}
	}
	printf(" Success!\n");

	readAck();

	printf("Finished. Success!\n");

	serialClose();
	return 0;
}

void readAck() {
	char c;
	printf("Awaiting acknowledge...");
	if (serialReadTry(&c, 1) != 0) {
		printf(" Could not read!\n");
		suicide;
	}
	if (c != OK) {
		printf(" Was not OK!\n");
		suicide;
	}
	printf(" OK\n");
}

int serialWriteString(char *s) {
	return serialWriteTry(s, strlen(s));
}

// 1 on error, 0 on success
int serialReadTry(char *data, size_t length) {
	int i = 0;
	int written = 0;
	int ret;
	while (keepRunning) {
		ret = serialRead((data + written), (length - written));
		if (ret == -1) {
			i++;
		} else {
			written += ret;
		}
		if (i > 10) {
			return 1;
		}
		if (written == length) {
			break;
		}
	}
	return 0;
}

// 1 on error, 0 on success
int serialWriteTry(char *data, size_t length) {
	int i = 0;
	int written = 0;
	int ret;
	while (keepRunning) {
		ret = serialWrite((data + written), (length - written));
		if (ret == -1) {
			i++;
		} else {
			written += ret;
		}
		if (i > 10) {
			return 1;
		}
		if (written == length) {
			break;
		}
	}
	return 0;
}

void intHandler(int dummy) {
	keepRunning = 0;
	serialClose();
	exit(0);
}
