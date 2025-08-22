.section .text
.global LED1ON
.global LED2ON
.global LED3ON
.global LEDOff
.global Delay
.type LED1ON, @function
.type LED2ON, @function
.type LED3ON, @function
.type LEDOff, @function
.type Delay, @function
#define LEDADD 0xFF020000
#define LED1 0x00000001
#define LED2 0x00000002
#define LED3 0x00000004
#define LEDOFF 0x00000000
#define TIME   0xF0040008
#define FREQ   0xFF002000
LED1ON:
  li t0,LEDADD
  li t1,LED1
  SW t1,0(t0)
  ret
LED2ON:
  li t0,LEDADD
  li t1,LED2
  SW t1,0(t0)
  ret
LED3ON:
  li t0,LEDADD
  li t1,LED3
  SW t1,0(t0)
  ret
LEDOff:
  li t0,LEDADD
  li t1,LEDOFF
  SW t1,0(t0)
  ret
Delay:
  li  t0, TIME
  lw  t1, 0(t0)
  li  t2, FREQ
  lw  t3, 0(t2)
  mul t3, t3, a0
  add t3, t1, t3
1:
  lw  t1, 0(t0)
  blt t1, t3, 1b
  ret
