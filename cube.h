#include <stdint.h>

// Time one latch is active in ns
#define LATCHDELAY 63

extern volatile uint8_t **imgBuffer; // imgBuffer[8][8]
extern volatile uint8_t imgFlag;

extern void setFet(uint8_t data);
extern void selectLatch(uint8_t latchNr);
extern void setLatch(uint8_t latchNr, uint8_t data);
extern void isrCall(void);
extern void delay_ns(uint16_t ns);
