#include "UART.h"
#include <xc.h>

void UART_Init(uint16_t baud)
{
    TXSTA = 0x00;
    RCSTA = 0x90;
    SPBRG = _XTAL_FREQ / (64.0 * baud) - 1;
    RCIE = 1;
}

void UART_Write(uint8_t data)
{
    while (!TX1STAbits.TRMT) {
    }
    TXREG = data;
}

void UART_String(uint8_t *str)
{
    if (str == NULL) return;

    while (*str != '\0') {
        UART_Write(*str);
        str++;
    }
}

uint8_t UART_Read(void)
{
    if (RC1STAbits.OERR == 1) {
        RC1STAbits.CREN = 0;
        RC1STAbits.CREN = 1;
    }

    return RCREG;
}
