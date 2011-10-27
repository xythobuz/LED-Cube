#include <stdlib.h>
#include <stdint.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "uart.h"
#include "cube.h"

#ifndef F_CPU
#define F_CPU 16000000L
#endif

void init(void) {
	uint8_t ctr = 0;
	DDRD = 0xFF; // Mosfets as Output
	DDRB = 0xFF;
	DDRC = 0xFF; // Latch Enable
	DDRA = 0xFF; // Latch Data
	
	uart_init(UART_BAUD_SELECT(19200, 16000000L));

	TCCR1A |= (1 << WGM12); // CTC Mode
	TCCR1B |= (1 << CS10); // No prescaler
	OCR1A = 3968;
	TIMSK = (1 << OCIE1A); // Enable Overflow Interrupt

	imgBuffer = malloc(8 * sizeof(uint8_t*));
	if (imgBuffer == NULL) {
		// TO-DO:
		// error!
	}
	for(ctr = 0; ctr < 8; ctr++) {
		imgBuffer[ctr] = malloc(8 * sizeof(uint8_t));
		if (imgBuffer[ctr] == NULL) {
			// TO-DO:
			// error!
		}
	}

	sei(); // Enable Interrupts
}

int main(void) {
	
	init();

	while (1) {
		
	}
	return 0;
}
