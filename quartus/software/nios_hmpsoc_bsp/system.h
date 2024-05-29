/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'cpu' in SOPC Builder design 'zoran_nios'
 * SOPC Builder design path: ../../zoran_nios.sopcinfo
 *
 * Generated: Wed May 29 17:03:56 NZST 2024
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * BUTTON_pio configuration
 *
 */

#define ALT_MODULE_CLASS_BUTTON_pio altera_avalon_pio
#define BUTTON_PIO_BASE 0x80110c0
#define BUTTON_PIO_BIT_CLEARING_EDGE_REGISTER 0
#define BUTTON_PIO_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BUTTON_PIO_CAPTURE 1
#define BUTTON_PIO_DATA_WIDTH 2
#define BUTTON_PIO_DO_TEST_BENCH_WIRING 0
#define BUTTON_PIO_DRIVEN_SIM_VALUE 0
#define BUTTON_PIO_EDGE_TYPE "RISING"
#define BUTTON_PIO_FREQ 50000000
#define BUTTON_PIO_HAS_IN 1
#define BUTTON_PIO_HAS_OUT 0
#define BUTTON_PIO_HAS_TRI 0
#define BUTTON_PIO_IRQ 2
#define BUTTON_PIO_IRQ_INTERRUPT_CONTROLLER_ID 0
#define BUTTON_PIO_IRQ_TYPE "EDGE"
#define BUTTON_PIO_NAME "/dev/BUTTON_pio"
#define BUTTON_PIO_RESET_VALUE 0
#define BUTTON_PIO_SPAN 16
#define BUTTON_PIO_TYPE "altera_avalon_pio"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_gen2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x08010820
#define ALT_CPU_CPU_ARCH_NIOS2_R1
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000001
#define ALT_CPU_CPU_IMPLEMENTATION "fast"
#define ALT_CPU_DATA_ADDR_WIDTH 0x1c
#define ALT_CPU_DCACHE_BYPASS_MASK 0x80000000
#define ALT_CPU_DCACHE_LINE_SIZE 32
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_DCACHE_SIZE 1024
#define ALT_CPU_EXCEPTION_ADDR 0x08008020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 1
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_EXTRA_EXCEPTION_INFO
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 32
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_ICACHE_SIZE 512
#define ALT_CPU_INITDA_SUPPORTED
#define ALT_CPU_INST_ADDR_WIDTH 0x1c
#define ALT_CPU_NAME "cpu"
#define ALT_CPU_NUM_OF_SHADOW_REG_SETS 0
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x08008000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x08010820
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000001
#define NIOS2_CPU_IMPLEMENTATION "fast"
#define NIOS2_DATA_ADDR_WIDTH 0x1c
#define NIOS2_DCACHE_BYPASS_MASK 0x80000000
#define NIOS2_DCACHE_LINE_SIZE 32
#define NIOS2_DCACHE_LINE_SIZE_LOG2 5
#define NIOS2_DCACHE_SIZE 1024
#define NIOS2_EXCEPTION_ADDR 0x08008020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 1
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_EXTRA_EXCEPTION_INFO
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 32
#define NIOS2_ICACHE_LINE_SIZE_LOG2 5
#define NIOS2_ICACHE_SIZE 512
#define NIOS2_INITDA_SUPPORTED
#define NIOS2_INST_ADDR_WIDTH 0x1c
#define NIOS2_NUM_OF_SHADOW_REG_SETS 0
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x08008000


/*
 * Custom instruction macros
 *
 */

#define ALT_CI_BIGLARI_READ_0 __builtin_custom_in(ALT_CI_BIGLARI_READ_0_N)
#define ALT_CI_BIGLARI_READ_0_N 0x0


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_TIMER
#define __ALTERA_NIOS2_GEN2
#define __BIGLARI_READ


/*
 * LED_pio configuration
 *
 */

#define ALT_MODULE_CLASS_LED_pio altera_avalon_pio
#define LED_PIO_BASE 0x80110d0
#define LED_PIO_BIT_CLEARING_EDGE_REGISTER 0
#define LED_PIO_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LED_PIO_CAPTURE 0
#define LED_PIO_DATA_WIDTH 8
#define LED_PIO_DO_TEST_BENCH_WIRING 0
#define LED_PIO_DRIVEN_SIM_VALUE 0
#define LED_PIO_EDGE_TYPE "NONE"
#define LED_PIO_FREQ 50000000
#define LED_PIO_HAS_IN 0
#define LED_PIO_HAS_OUT 1
#define LED_PIO_HAS_TRI 0
#define LED_PIO_IRQ -1
#define LED_PIO_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LED_PIO_IRQ_TYPE "NONE"
#define LED_PIO_NAME "/dev/LED_pio"
#define LED_PIO_RESET_VALUE 0
#define LED_PIO_SPAN 16
#define LED_PIO_TYPE "altera_avalon_pio"


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone V"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart"
#define ALT_STDERR_BASE 0x80110e0
#define ALT_STDERR_DEV jtag_uart
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart"
#define ALT_STDIN_BASE 0x80110e0
#define ALT_STDIN_DEV jtag_uart
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart"
#define ALT_STDOUT_BASE 0x80110e0
#define ALT_STDOUT_DEV jtag_uart
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "zoran_nios"


/*
 * ack configuration
 *
 */

#define ACK_BASE 0x0
#define ACK_BIT_CLEARING_EDGE_REGISTER 0
#define ACK_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ACK_CAPTURE 0
#define ACK_DATA_WIDTH 1
#define ACK_DO_TEST_BENCH_WIRING 0
#define ACK_DRIVEN_SIM_VALUE 0
#define ACK_EDGE_TYPE "NONE"
#define ACK_FREQ 50000000
#define ACK_HAS_IN 0
#define ACK_HAS_OUT 1
#define ACK_HAS_TRI 0
#define ACK_IRQ -1
#define ACK_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ACK_IRQ_TYPE "NONE"
#define ACK_NAME "/dev/ack"
#define ACK_RESET_VALUE 0
#define ACK_SPAN 16
#define ACK_TYPE "altera_avalon_pio"
#define ALT_MODULE_CLASS_ack altera_avalon_pio


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 4
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * high_res_timer configuration
 *
 */

#define ALT_MODULE_CLASS_high_res_timer altera_avalon_timer
#define HIGH_RES_TIMER_ALWAYS_RUN 0
#define HIGH_RES_TIMER_BASE 0x8011000
#define HIGH_RES_TIMER_COUNTER_SIZE 32
#define HIGH_RES_TIMER_FIXED_PERIOD 0
#define HIGH_RES_TIMER_FREQ 50000000
#define HIGH_RES_TIMER_IRQ 0
#define HIGH_RES_TIMER_IRQ_INTERRUPT_CONTROLLER_ID 0
#define HIGH_RES_TIMER_LOAD_VALUE 49999
#define HIGH_RES_TIMER_MULT 0.001
#define HIGH_RES_TIMER_NAME "/dev/high_res_timer"
#define HIGH_RES_TIMER_PERIOD 1
#define HIGH_RES_TIMER_PERIOD_UNITS "ms"
#define HIGH_RES_TIMER_RESET_OUTPUT 0
#define HIGH_RES_TIMER_SNAPSHOT 1
#define HIGH_RES_TIMER_SPAN 32
#define HIGH_RES_TIMER_TICKS_PER_SEC 1000
#define HIGH_RES_TIMER_TIMEOUT_PULSE_OUTPUT 0
#define HIGH_RES_TIMER_TYPE "altera_avalon_timer"


/*
 * jtag_uart configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart altera_avalon_jtag_uart
#define JTAG_UART_BASE 0x80110e0
#define JTAG_UART_IRQ 1
#define JTAG_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_NAME "/dev/jtag_uart"
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_SPAN 8
#define JTAG_UART_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8


/*
 * onchip_memory configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_memory altera_avalon_onchip_memory2
#define ONCHIP_MEMORY_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_MEMORY_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_MEMORY_BASE 0x8008000
#define ONCHIP_MEMORY_CONTENTS_INFO ""
#define ONCHIP_MEMORY_DUAL_PORT 0
#define ONCHIP_MEMORY_GUI_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY_INIT_CONTENTS_FILE "zoran_nios_onchip_memory"
#define ONCHIP_MEMORY_INIT_MEM_CONTENT 1
#define ONCHIP_MEMORY_INSTANCE_ID "NONE"
#define ONCHIP_MEMORY_IRQ -1
#define ONCHIP_MEMORY_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_MEMORY_NAME "/dev/onchip_memory"
#define ONCHIP_MEMORY_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_MEMORY_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_MEMORY_SINGLE_CLOCK_OP 0
#define ONCHIP_MEMORY_SIZE_MULTIPLE 1
#define ONCHIP_MEMORY_SIZE_VALUE 20480
#define ONCHIP_MEMORY_SPAN 20480
#define ONCHIP_MEMORY_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_MEMORY_WRITABLE 1


/*
 * recv_addr configuration
 *
 */

#define ALT_MODULE_CLASS_recv_addr altera_avalon_pio
#define RECV_ADDR_BASE 0x8011020
#define RECV_ADDR_BIT_CLEARING_EDGE_REGISTER 1
#define RECV_ADDR_BIT_MODIFYING_OUTPUT_REGISTER 0
#define RECV_ADDR_CAPTURE 1
#define RECV_ADDR_DATA_WIDTH 8
#define RECV_ADDR_DO_TEST_BENCH_WIRING 0
#define RECV_ADDR_DRIVEN_SIM_VALUE 0
#define RECV_ADDR_EDGE_TYPE "RISING"
#define RECV_ADDR_FREQ 50000000
#define RECV_ADDR_HAS_IN 1
#define RECV_ADDR_HAS_OUT 0
#define RECV_ADDR_HAS_TRI 0
#define RECV_ADDR_IRQ -1
#define RECV_ADDR_IRQ_INTERRUPT_CONTROLLER_ID -1
#define RECV_ADDR_IRQ_TYPE "NONE"
#define RECV_ADDR_NAME "/dev/recv_addr"
#define RECV_ADDR_RESET_VALUE 0
#define RECV_ADDR_SPAN 16
#define RECV_ADDR_TYPE "altera_avalon_pio"


/*
 * recv_data configuration
 *
 */

#define ALT_MODULE_CLASS_recv_data altera_avalon_pio
#define RECV_DATA_BASE 0x8011030
#define RECV_DATA_BIT_CLEARING_EDGE_REGISTER 1
#define RECV_DATA_BIT_MODIFYING_OUTPUT_REGISTER 0
#define RECV_DATA_CAPTURE 1
#define RECV_DATA_DATA_WIDTH 32
#define RECV_DATA_DO_TEST_BENCH_WIRING 0
#define RECV_DATA_DRIVEN_SIM_VALUE 0
#define RECV_DATA_EDGE_TYPE "RISING"
#define RECV_DATA_FREQ 50000000
#define RECV_DATA_HAS_IN 1
#define RECV_DATA_HAS_OUT 0
#define RECV_DATA_HAS_TRI 0
#define RECV_DATA_IRQ -1
#define RECV_DATA_IRQ_INTERRUPT_CONTROLLER_ID -1
#define RECV_DATA_IRQ_TYPE "NONE"
#define RECV_DATA_NAME "/dev/recv_data"
#define RECV_DATA_RESET_VALUE 0
#define RECV_DATA_SPAN 16
#define RECV_DATA_TYPE "altera_avalon_pio"


/*
 * send_addr configuration
 *
 */

#define ALT_MODULE_CLASS_send_addr altera_avalon_pio
#define SEND_ADDR_BASE 0x8011040
#define SEND_ADDR_BIT_CLEARING_EDGE_REGISTER 0
#define SEND_ADDR_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SEND_ADDR_CAPTURE 0
#define SEND_ADDR_DATA_WIDTH 8
#define SEND_ADDR_DO_TEST_BENCH_WIRING 0
#define SEND_ADDR_DRIVEN_SIM_VALUE 0
#define SEND_ADDR_EDGE_TYPE "NONE"
#define SEND_ADDR_FREQ 50000000
#define SEND_ADDR_HAS_IN 0
#define SEND_ADDR_HAS_OUT 1
#define SEND_ADDR_HAS_TRI 0
#define SEND_ADDR_IRQ -1
#define SEND_ADDR_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SEND_ADDR_IRQ_TYPE "NONE"
#define SEND_ADDR_NAME "/dev/send_addr"
#define SEND_ADDR_RESET_VALUE 0
#define SEND_ADDR_SPAN 16
#define SEND_ADDR_TYPE "altera_avalon_pio"


/*
 * send_data configuration
 *
 */

#define ALT_MODULE_CLASS_send_data altera_avalon_pio
#define SEND_DATA_BASE 0x8011050
#define SEND_DATA_BIT_CLEARING_EDGE_REGISTER 0
#define SEND_DATA_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SEND_DATA_CAPTURE 0
#define SEND_DATA_DATA_WIDTH 32
#define SEND_DATA_DO_TEST_BENCH_WIRING 0
#define SEND_DATA_DRIVEN_SIM_VALUE 0
#define SEND_DATA_EDGE_TYPE "NONE"
#define SEND_DATA_FREQ 50000000
#define SEND_DATA_HAS_IN 0
#define SEND_DATA_HAS_OUT 1
#define SEND_DATA_HAS_TRI 0
#define SEND_DATA_IRQ -1
#define SEND_DATA_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SEND_DATA_IRQ_TYPE "NONE"
#define SEND_DATA_NAME "/dev/send_data"
#define SEND_DATA_RESET_VALUE 0
#define SEND_DATA_SPAN 16
#define SEND_DATA_TYPE "altera_avalon_pio"


/*
 * sseg_0 configuration
 *
 */

#define ALT_MODULE_CLASS_sseg_0 altera_avalon_pio
#define SSEG_0_BASE 0x80110b0
#define SSEG_0_BIT_CLEARING_EDGE_REGISTER 0
#define SSEG_0_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SSEG_0_CAPTURE 0
#define SSEG_0_DATA_WIDTH 7
#define SSEG_0_DO_TEST_BENCH_WIRING 0
#define SSEG_0_DRIVEN_SIM_VALUE 0
#define SSEG_0_EDGE_TYPE "NONE"
#define SSEG_0_FREQ 50000000
#define SSEG_0_HAS_IN 0
#define SSEG_0_HAS_OUT 1
#define SSEG_0_HAS_TRI 0
#define SSEG_0_IRQ -1
#define SSEG_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SSEG_0_IRQ_TYPE "NONE"
#define SSEG_0_NAME "/dev/sseg_0"
#define SSEG_0_RESET_VALUE 0
#define SSEG_0_SPAN 16
#define SSEG_0_TYPE "altera_avalon_pio"


/*
 * sseg_1 configuration
 *
 */

#define ALT_MODULE_CLASS_sseg_1 altera_avalon_pio
#define SSEG_1_BASE 0x80110a0
#define SSEG_1_BIT_CLEARING_EDGE_REGISTER 0
#define SSEG_1_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SSEG_1_CAPTURE 0
#define SSEG_1_DATA_WIDTH 7
#define SSEG_1_DO_TEST_BENCH_WIRING 0
#define SSEG_1_DRIVEN_SIM_VALUE 0
#define SSEG_1_EDGE_TYPE "NONE"
#define SSEG_1_FREQ 50000000
#define SSEG_1_HAS_IN 0
#define SSEG_1_HAS_OUT 1
#define SSEG_1_HAS_TRI 0
#define SSEG_1_IRQ -1
#define SSEG_1_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SSEG_1_IRQ_TYPE "NONE"
#define SSEG_1_NAME "/dev/sseg_1"
#define SSEG_1_RESET_VALUE 0
#define SSEG_1_SPAN 16
#define SSEG_1_TYPE "altera_avalon_pio"


/*
 * sseg_2 configuration
 *
 */

#define ALT_MODULE_CLASS_sseg_2 altera_avalon_pio
#define SSEG_2_BASE 0x8011090
#define SSEG_2_BIT_CLEARING_EDGE_REGISTER 0
#define SSEG_2_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SSEG_2_CAPTURE 0
#define SSEG_2_DATA_WIDTH 7
#define SSEG_2_DO_TEST_BENCH_WIRING 0
#define SSEG_2_DRIVEN_SIM_VALUE 0
#define SSEG_2_EDGE_TYPE "NONE"
#define SSEG_2_FREQ 50000000
#define SSEG_2_HAS_IN 0
#define SSEG_2_HAS_OUT 1
#define SSEG_2_HAS_TRI 0
#define SSEG_2_IRQ -1
#define SSEG_2_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SSEG_2_IRQ_TYPE "NONE"
#define SSEG_2_NAME "/dev/sseg_2"
#define SSEG_2_RESET_VALUE 0
#define SSEG_2_SPAN 16
#define SSEG_2_TYPE "altera_avalon_pio"


/*
 * sseg_3 configuration
 *
 */

#define ALT_MODULE_CLASS_sseg_3 altera_avalon_pio
#define SSEG_3_BASE 0x8011080
#define SSEG_3_BIT_CLEARING_EDGE_REGISTER 0
#define SSEG_3_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SSEG_3_CAPTURE 0
#define SSEG_3_DATA_WIDTH 7
#define SSEG_3_DO_TEST_BENCH_WIRING 0
#define SSEG_3_DRIVEN_SIM_VALUE 0
#define SSEG_3_EDGE_TYPE "NONE"
#define SSEG_3_FREQ 50000000
#define SSEG_3_HAS_IN 0
#define SSEG_3_HAS_OUT 1
#define SSEG_3_HAS_TRI 0
#define SSEG_3_IRQ -1
#define SSEG_3_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SSEG_3_IRQ_TYPE "NONE"
#define SSEG_3_NAME "/dev/sseg_3"
#define SSEG_3_RESET_VALUE 0
#define SSEG_3_SPAN 16
#define SSEG_3_TYPE "altera_avalon_pio"


/*
 * sseg_4 configuration
 *
 */

#define ALT_MODULE_CLASS_sseg_4 altera_avalon_pio
#define SSEG_4_BASE 0x8011070
#define SSEG_4_BIT_CLEARING_EDGE_REGISTER 0
#define SSEG_4_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SSEG_4_CAPTURE 0
#define SSEG_4_DATA_WIDTH 7
#define SSEG_4_DO_TEST_BENCH_WIRING 0
#define SSEG_4_DRIVEN_SIM_VALUE 0
#define SSEG_4_EDGE_TYPE "NONE"
#define SSEG_4_FREQ 50000000
#define SSEG_4_HAS_IN 0
#define SSEG_4_HAS_OUT 1
#define SSEG_4_HAS_TRI 0
#define SSEG_4_IRQ -1
#define SSEG_4_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SSEG_4_IRQ_TYPE "NONE"
#define SSEG_4_NAME "/dev/sseg_4"
#define SSEG_4_RESET_VALUE 0
#define SSEG_4_SPAN 16
#define SSEG_4_TYPE "altera_avalon_pio"


/*
 * sseg_5 configuration
 *
 */

#define ALT_MODULE_CLASS_sseg_5 altera_avalon_pio
#define SSEG_5_BASE 0x8011060
#define SSEG_5_BIT_CLEARING_EDGE_REGISTER 0
#define SSEG_5_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SSEG_5_CAPTURE 0
#define SSEG_5_DATA_WIDTH 7
#define SSEG_5_DO_TEST_BENCH_WIRING 0
#define SSEG_5_DRIVEN_SIM_VALUE 0
#define SSEG_5_EDGE_TYPE "NONE"
#define SSEG_5_FREQ 50000000
#define SSEG_5_HAS_IN 0
#define SSEG_5_HAS_OUT 1
#define SSEG_5_HAS_TRI 0
#define SSEG_5_IRQ -1
#define SSEG_5_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SSEG_5_IRQ_TYPE "NONE"
#define SSEG_5_NAME "/dev/sseg_5"
#define SSEG_5_RESET_VALUE 0
#define SSEG_5_SPAN 16
#define SSEG_5_TYPE "altera_avalon_pio"

#endif /* __SYSTEM_H_ */
