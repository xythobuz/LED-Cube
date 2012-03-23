/*
 * POSIX compatible serial port library
 * Uses 8 databits, no parity, 1 stop bit, no handshaking
 * By: Thomas Buck <taucher.bodensee@gmail.com>
 * Visit: www.xythobuz.org
 */

// Use POSIX Baud constants (B2400, B9600...)
#define BAUD B38400

// Open pseudo terminal. Return name of slave on success, NULL on error.
char *serialOpen(void);

// Write to port. Returns number of characters sent, -1 on error
ssize_t serialWrite(char *data, size_t length);

// Read from port. Return number of characters read, 0 if none available, -1 on error
ssize_t serialRead(char *data, size_t length);

// Close the serial Port
void serialClose(void);
