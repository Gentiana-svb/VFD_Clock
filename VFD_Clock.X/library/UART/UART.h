#ifndef _UART_H_
#define _UART_H_

#include <stdint.h>

#define _XTAL_FREQ 64000000

void UART_Init(uint16_t baud);
void UART_Write(uint8_t data);
void UART_String(uint8_t *str);
uint8_t UART_Read(void);

#endif
