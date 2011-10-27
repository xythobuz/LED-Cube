#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdlib.h>

#include "cube.h"

#ifndef F_CPU
#define F_CPU 16000000L
#endif

volatile uint8_t _isrCounter = 0;
volatile uint8_t **imgBuffer = NULL; // imgBuffer[8][8]
volatile uint8_t imgFlag = 0;

// Wir zählen 21 mal bis 3968
ISR(TIMER1_COMPA_vect) {
	if (_isrCounter < 20) {
		_isrCounter++;
	} else {
		_isrCounter = 0;
		isrCall();
	}
}

inline void setFet(uint8_t data) {
	data &= ~((1 << 1) | 1);
	PORTD = data;
	data &= ~(3);
	data = data << 3;
	PORTB |= data;
}


inline void selectLatch(uint8_t latchNr) {
	PORTC = 0;
	if (latchNr < 8) {
		PORTC = 1 << latchNr;
	}
}

inline void setLatch(uint8_t latchNr, uint8_t data) {
	setFet(0); // All LEDs off
	selectLatch(latchNr); // Activate current latch
	PORTA = data; // Put latch data
	delay_ns(LATCHDELAY); // Wait for latch
	selectLatch(8); // Deactivate all latches
	setFet(1 << latchNr); // Activate current plane
}

inline void isrCall(void) {
	static uint8_t layer = 0;
	uint8_t latchCtr = 0;
	
	for (; latchCtr < 8; latchCtr++) {
		setLatch(latchCtr, imgBuffer[layer][latchCtr]); // Put out all the data
	}
	
	// Select next layer
	if (layer < 7) {
		layer++;
	} else {
		layer = 0;
	}
}

inline void delay_ns(uint16_t ns) {
	// minimum 63 nanoseconds (= 1 tick)
	uint16_t i = ns;
	if (ns != 0) {
		if (ns < 63) {
			ns = 63;
		}
		for (; i > 0; i -= 63) {
			asm volatile("nop"::);
		}
	}
}
