
/**
 * @brief FujiNet Network Device Library Apple2 Base Functions
 * @license gpl v. 3, see LICENSE for details.
 */

#ifndef FUJINET_NETWORK_APPLE2_H
#define FUJINET_NETWORK_APPLE2_H

#include <stdint.h>
#include <stdbool.h>

extern uint8_t sp_network;

void sp_clr_payload();
int8_t sp_status(uint8_t dest, uint8_t statcode);
int8_t sp_control(uint8_t dest, uint8_t ctrlcode);

int8_t sp_status(uint8_t dest, uint8_t statcode);
int8_t sp_control(uint8_t dest, uint8_t ctrlcode);
int8_t sp_find_device(char *device_name);
int8_t sp_find_network();

bool sp_init();

#endif
