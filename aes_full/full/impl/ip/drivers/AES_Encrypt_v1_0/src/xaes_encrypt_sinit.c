// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xaes_encrypt.h"

extern XAes_encrypt_Config XAes_encrypt_ConfigTable[];

XAes_encrypt_Config *XAes_encrypt_LookupConfig(u16 DeviceId) {
	XAes_encrypt_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XAES_ENCRYPT_NUM_INSTANCES; Index++) {
		if (XAes_encrypt_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAes_encrypt_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAes_encrypt_Initialize(XAes_encrypt *InstancePtr, u16 DeviceId) {
	XAes_encrypt_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAes_encrypt_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAes_encrypt_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif
