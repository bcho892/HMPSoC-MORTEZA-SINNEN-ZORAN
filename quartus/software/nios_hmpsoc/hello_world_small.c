/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include "altera_avalon_pio_regs.h"
#include "system.h"
#include <stdint.h>
#include <stdio.h>

#define SEND_DATA(data) IOWR_ALTERA_AVALON_PIO_DATA(DATA_OUT_BASE, data)
#define SEND_ADDR(data) IOWR_ALTERA_AVALON_PIO_DATA(ADDR_OUT_BASE, data)

int main() {
    printf("Hello from Nios II!\n");
    // SEND_ADDR(0x01);
    // SEND_DATA(0x00000000);
    IOWR_ALTERA_AVALON_PIO_DATA(ACK_BASE, 0);

    for (;;) {
        uint32_t datain = *((volatile uint32_t *)RECV_DATA_BASE);
        uint32_t addrin = IORD_ALTERA_AVALON_PIO_DATA(RECV_ADDR_BASE);
        IOWR_ALTERA_AVALON_PIO_DATA(ACK_BASE, 1);
        if (datain == 0) {
            IOWR_ALTERA_AVALON_PIO_DATA(ACK_BASE, 0);
        }
        printf("type: %x\n", datain >> 28);

        if (datain >> 28 == 0b1011) {
            printf("Peak Detected: Cock Cycles: %d\n", datain & 0x00001111);
            //	     printf("Addr: %d\n", addrin);
            //      SEND_ADDR(0x01);
            //      SEND_DATA(datain & 0xFFFF);
        }
    }
    return 0;
}