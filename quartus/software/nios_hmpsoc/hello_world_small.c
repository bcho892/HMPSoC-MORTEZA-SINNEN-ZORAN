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
#include "priv/alt_busy_sleep.h"
#include "system.h"
#include <stdint.h>
#include <stdio.h>

#define SEND_DATA(data) IOWR_ALTERA_AVALON_PIO_DATA(DATA_OUT_BASE, data)
#define SEND_ADDR(data) IOWR_ALTERA_AVALON_PIO_DATA(ADDR_OUT_BASE, data)

#define CLOCK_FREQUENCY 50000000UL

#define CORRELATION_CODE 0b1001
#define PEAK_INFO_CODE 0b1011
#define SIGNAL_INFO_CODE 0b1000

#define DATA_ONLY(data) data & 0x0FFFFFFF

static float calculate_frequency(uint32_t cycles);

static uint32_t decimal_to_hex(uint32_t value);

int main() {
    printf("Hello from Nios II!\n");
    // SEND_ADDR(0x01);
    // SEND_DATA(0x00000000);

    for (;;) {

        uint32_t datain = ALT_CI_BIGLARI_READ_0;
        // ALT_CI_BIGLARI_SSEG_0(datain >> 28);

        switch (datain >> 28) {
        case (CORRELATION_CODE):
            printf("Correlation Detected: Value: %u\n", DATA_ONLY(datain));
            ALT_CI_BIGLARI_SSEG_0((0xC << 20) | decimal_to_hex(DATA_ONLY(datain)));
            break;
        case (PEAK_INFO_CODE):;
            uint32_t cycles = DATA_ONLY(datain);
            uint16_t frequency = (uint16_t)calculate_frequency(cycles);
            printf("Peak Detected: Frequency: %u\n", frequency);
            ALT_CI_BIGLARI_SSEG_0((0xF << 20) | decimal_to_hex(DATA_ONLY(frequency)));
            break;
        case (SIGNAL_INFO_CODE):

            printf("Signal reading: %u\n", DATA_ONLY(datain));
            ALT_CI_BIGLARI_SSEG_0((0xA << 20) | (0xD << 16) | decimal_to_hex(DATA_ONLY(datain)));
            break;
        }
    }

    return 0;
}

static float calculate_frequency(uint32_t cycles) {
    return CLOCK_FREQUENCY / (float)cycles;
}

static uint32_t decimal_to_hex(uint32_t value) {
    return (((value / 100000) % 10) << 20) |
           (((value / 10000) % 10) << 16) |
           (((value / 1000) % 10) << 12) |
           (((value / 100) % 10) << 8) |
           (((value / 10) % 10) << 4) |
           (value % 10);
}
