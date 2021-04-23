// VFD Clock Controll Program
// MCU      : PIC18F27Q10
// Compiler : XC8 v2.32
// Date     : 4/3/2021

#include "config.h"
#include "library/UART/UART.h"
#include <stdint.h>
#include <string.h>
#include <xc.h>

// PORT Define
#define PIR RB3
#define RX  RC0
#define LED LATC3
#define SI  LATC5
#define RCK LATC6
#define SCK LATC7

// Sseg Position
#define SEG_A  0
#define SEG_B  1
#define SEG_C  2
#define SEG_D  3
#define SEG_E  4
#define SEG_F  5
#define SEG_G  6
#define SEG_DP 7

// Global
_Bool g_t0_f;
uint32_t g_time;

// RTC Receive
void RTC_Read(uint8_t data);

// Data Conversion
uint32_t Convert_data(uint32_t data);
uint8_t Check_Seg(uint8_t num, uint8_t pos);
void Bit_Write(uint64_t *ptr, uint8_t num, uint8_t data);

// Device Controll
void VFD_Write(uint32_t data);
void Duty_Controll();
void MAX6922_Write(uint64_t data);

// Peripheral Controll
void Set_PWM_Duty(uint8_t ch, int16_t duty);
_Bool T0_int(int16_t val);
_Bool T0_int2(int16_t val);

// Initialize
void init()
{
    // OSC
    OSCCON1 = 0x60;
    OSCFRQ = 0x08;

    // I/O
    TRISA = 0x00;
    TRISB = 0x08;
    TRISC = 0x01;

    // A/D
    ANSELA = 0x00;
    ANSELB = 0x00;
    ANSELC = 0x00;

    // Timer0
    T0CON0 = 0x90;
    T0CON1 = 0xd0; // 500kHz
    TMR0IE = 1;

    // Timer2
    T2CLKCON = 0x01; // Clock source is Fosc/4
    T2PR = 0xfe;     // Maximum Duty Resolution
    T2CON = 0xf0;    // Timer2 enable, Pre scaler 1:128, Post scaler 1:1

    // PWM3
    PWM3CON = 0x80;            // PWM enable
    CCPTMRSbits.P3TSEL = 0x01; // PWM3 based Timer2
    Set_PWM_Duty(3, 0);

    // PPS unlock
    PPSLOCK = 0x55;
    PPSLOCK = 0xAA;
    PPSLOCK = 0x00;

    // PPS
    RX1PPS = 0x10; // RC0 = RX1
    RC3PPS = 0x07; // RC3 = PWM3

    // PPS lock
    PPSLOCK = 0x55;
    PPSLOCK = 0xAA;
    PPSLOCK = 0x00;

    // UART
    UART_Init(9600);

    // Interrupts
    ei();
    PEIE = 1;
}

// Main
void main()
{
    init();

    while (1) {
        if (T0_int(2)) {
            Duty_Controll();
        }

        if (PIR) {
            VFD_Write(g_time);
        }
    }
}

// Interupts
void __interrupt() isr()
{
    // 1ms Interrupt
    if (TMR0IF) {
        WRITETIMER0(65036);
        TMR0IF = 0;
        g_t0_f = ~g_t0_f;
    }

    if (RCIF) {
        RTC_Read(UART_Read());
    }
}

// VFD Output
void VFD_Write(uint32_t data)
{
    uint8_t buff[6]; // [5][4][3][2][1][0]
    uint64_t temp = 0;
    uint8_t Heater_Control = 1;

    if (data > 999999) {
        data %= 1000000;
    }

    buff[0] = (data / 1) % 10;
    buff[1] = (data / 10) % 10;
    buff[2] = (data / 100) % 10;
    buff[3] = (data / 1000) % 10;
    buff[4] = (data / 10000) % 10;
    buff[5] = (data / 100000) % 10;

    Bit_Write(&temp, 0, Check_Seg(buff[2], SEG_B));
    Bit_Write(&temp, 1, Check_Seg(buff[2], SEG_DP));
    Bit_Write(&temp, 2, Check_Seg(buff[2], SEG_C));

    Bit_Write(&temp, 3, Check_Seg(buff[1], SEG_D));
    Bit_Write(&temp, 4, Check_Seg(buff[1], SEG_E));
    Bit_Write(&temp, 5, Check_Seg(buff[1], SEG_F));
    Bit_Write(&temp, 6, Check_Seg(buff[1], SEG_G));

    Bit_Write(&temp, 10, Check_Seg(buff[1], SEG_A));
    Bit_Write(&temp, 11, Check_Seg(buff[1], SEG_B));
    Bit_Write(&temp, 12, Check_Seg(buff[1], SEG_DP));
    Bit_Write(&temp, 13, Check_Seg(buff[1], SEG_C));

    Bit_Write(&temp, 14, Check_Seg(buff[0], SEG_D));
    Bit_Write(&temp, 15, Check_Seg(buff[0], SEG_E));

    Bit_Write(&temp, 16, Check_Seg(buff[0], SEG_F));
    Bit_Write(&temp, 17, Check_Seg(buff[0], SEG_G));
    Bit_Write(&temp, 18, Check_Seg(buff[0], SEG_A));

    Bit_Write(&temp, 19, Check_Seg(buff[0], SEG_B));
    Bit_Write(&temp, 20, Check_Seg(buff[0], SEG_DP));
    Bit_Write(&temp, 21, Check_Seg(buff[0], SEG_C));

    Bit_Write(&temp, 27, Check_Seg(buff[2], SEG_D));
    Bit_Write(&temp, 28, Check_Seg(buff[2], SEG_E));

    Bit_Write(&temp, 29, Check_Seg(buff[2], SEG_F));
    Bit_Write(&temp, 30, Check_Seg(buff[2], SEG_G));
    Bit_Write(&temp, 31, Check_Seg(buff[2], SEG_A));

    Bit_Write(&temp, 32, Check_Seg(buff[5], SEG_B));
    Bit_Write(&temp, 33, Check_Seg(buff[5], SEG_DP));
    Bit_Write(&temp, 34, Check_Seg(buff[5], SEG_C));

    Bit_Write(&temp, 35, Check_Seg(buff[4], SEG_D));
    Bit_Write(&temp, 36, Check_Seg(buff[4], SEG_E));
    Bit_Write(&temp, 37, Check_Seg(buff[4], SEG_F));
    Bit_Write(&temp, 38, Check_Seg(buff[4], SEG_G));

    Bit_Write(&temp, 42, Check_Seg(buff[4], SEG_A));
    Bit_Write(&temp, 43, Check_Seg(buff[4], SEG_B));
    Bit_Write(&temp, 44, Check_Seg(buff[4], SEG_DP));
    Bit_Write(&temp, 45, Check_Seg(buff[4], SEG_C));

    Bit_Write(&temp, 46, Check_Seg(buff[3], SEG_D));
    Bit_Write(&temp, 47, Check_Seg(buff[3], SEG_E));

    Bit_Write(&temp, 48, Check_Seg(buff[3], SEG_F));
    Bit_Write(&temp, 49, Check_Seg(buff[3], SEG_G));
    Bit_Write(&temp, 50, Check_Seg(buff[3], SEG_A));

    Bit_Write(&temp, 51, Check_Seg(buff[3], SEG_B));
    Bit_Write(&temp, 52, Check_Seg(buff[3], SEG_DP));
    Bit_Write(&temp, 53, Check_Seg(buff[3], SEG_C));

    Bit_Write(&temp, 58, Heater_Control);

    Bit_Write(&temp, 59, Check_Seg(buff[5], SEG_D));
    Bit_Write(&temp, 60, Check_Seg(buff[5], SEG_E));

    Bit_Write(&temp, 61, Check_Seg(buff[5], SEG_F));
    Bit_Write(&temp, 62, Check_Seg(buff[5], SEG_G));
    Bit_Write(&temp, 63, Check_Seg(buff[5], SEG_A));

    MAX6922_Write(temp);
}

// Brightness Controll
void Duty_Controll()
{
    static uint16_t cnt = 0;
    static const uint16_t cnt_limit = 0x0100;

    if (PIR) {
        if (cnt < cnt_limit) {
            cnt++;
        }
    }
    else {
        cnt = 0;
    }

    Set_PWM_Duty(3, cnt);
}

// MAX6922 Data Write
void MAX6922_Write(uint64_t data)
{
    int16_t i;

    for (i = 0; i < 64; i++) {
        SI = data >> i;
        SCK = 0;
        SCK = 1;
    }

    RCK = 0;
    RCK = 1;
}

// RTC Receive
void RTC_Read(uint8_t data)
{
    static int16_t cnt = 0;
    static char str[10];

    switch (cnt) {
        case 0:
            // Receive Start
            if (data == '$') {
                // Buffer Clear
                memset(str, '\0', sizeof(str));
                cnt++;
            }
            break;

        case 3:
            // NMEA ZDA Format
            if (data == 'Z') {
                cnt++;
            }
            else {
                cnt = 0;
            }
            break;

        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
            str[cnt - 7] = data;
            cnt++;
            break;

        default:
            cnt++;
            break;
    }

    // Receive Complete
    if (cnt >= 13) {
        g_time = Convert_data(atol(str));
        cnt = 0;
    }
}

// UTC to JST
uint32_t Convert_data(uint32_t data)
{
    uint32_t hour;
    uint32_t min;
    uint32_t sec;

    hour = (data / 10000) % 100;
    min = (data / 100) % 100;
    sec = (data / 1) % 100;

    // UTC Convert to JST
    hour = (hour + 9) % 24;

    return (hour * 10000) + (min * 100) + (sec * 1);
}

// Sseg Segments Verdict
uint8_t Check_Seg(uint8_t num, uint8_t pos)
{
    // A B C D E F G DP
    static const uint8_t data[10][8] = {
        { 1, 1, 1, 1, 1, 1, 0, 0 }, // 0
        { 0, 1, 1, 0, 0, 0, 0, 0 }, // 1
        { 1, 1, 0, 1, 1, 0, 1, 0 }, // 2
        { 1, 1, 1, 1, 0, 0, 1, 0 }, // 3
        { 0, 1, 1, 0, 0, 1, 1, 0 }, // 4
        { 1, 0, 1, 1, 0, 1, 1, 0 }, // 5
        { 1, 0, 1, 1, 1, 1, 1, 0 }, // 6
        { 1, 1, 1, 0, 0, 0, 0, 0 }, // 7
        { 1, 1, 1, 1, 1, 1, 1, 0 }, // 8
        { 1, 1, 1, 1, 0, 1, 1, 0 }, // 9
    };

    return data[num][pos];
}

// 1Bit Data Write to 64Bit Data
void Bit_Write(uint64_t *ptr, uint8_t num, uint8_t data)
{
    if (ptr == NULL) return;

    if (data == 0) {
        (*ptr) &= ~((uint64_t)0x01 << num);
    }
    else {
        (*ptr) |= ((uint64_t)0x01 << num);
    }
}

// PWM Module Controll
void Set_PWM_Duty(uint8_t ch, int16_t duty)
{
    switch (ch) {
        case 3:
            PWM3DCH = duty >> 2;
            PWM3DCL = duty;
            break;

        case 4:
            PWM4DCH = duty >> 2;
            PWM4DCL = duty;
            break;

        default:
            return;
    }
}

// Timer0 Custom Interval
_Bool T0_int(int16_t val)
{
    static uint8_t flag = 0;
    static int16_t cnt = 0;

    if (flag != g_t0_f) {
        flag = g_t0_f;
        cnt++;
        if (cnt >= val) {
            cnt = 0;
            return 1;
        }
    }

    return 0;
}

// Timer0 Custom Interval 2
_Bool T0_int2(int16_t val)
{
    static uint8_t flag = 0;
    static int16_t cnt = 0;

    if (flag != g_t0_f) {
        flag = g_t0_f;
        cnt++;
        if (cnt >= val) {
            cnt = 0;
            return 1;
        }
    }

    return 0;
}