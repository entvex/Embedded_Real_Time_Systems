// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

// eqio
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of b0
//        bit 31~0 - b0[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of b1
//        bit 31~0 - b1[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of b2
//        bit 31~0 - b2[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of a1
//        bit 31~0 - a1[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of a2
//        bit 31~0 - a2[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of band
//        bit 15~0 - band[15:0] (Read/Write)
//        others   - reserved
// 0x3c : reserved
// 0x40 : Data signal of sampleIn
//        bit 15~0 - sampleIn[15:0] (Read/Write)
//        others   - reserved
// 0x44 : reserved
// 0x48 : Data signal of sampleOut
//        bit 15~0 - sampleOut[15:0] (Read)
//        others   - reserved
// 0x4c : Control signal of sampleOut
//        bit 0  - sampleOut_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XEQ_EQIO_ADDR_AP_CTRL        0x00
#define XEQ_EQIO_ADDR_GIE            0x04
#define XEQ_EQIO_ADDR_IER            0x08
#define XEQ_EQIO_ADDR_ISR            0x0c
#define XEQ_EQIO_ADDR_B0_DATA        0x10
#define XEQ_EQIO_BITS_B0_DATA        32
#define XEQ_EQIO_ADDR_B1_DATA        0x18
#define XEQ_EQIO_BITS_B1_DATA        32
#define XEQ_EQIO_ADDR_B2_DATA        0x20
#define XEQ_EQIO_BITS_B2_DATA        32
#define XEQ_EQIO_ADDR_A1_DATA        0x28
#define XEQ_EQIO_BITS_A1_DATA        32
#define XEQ_EQIO_ADDR_A2_DATA        0x30
#define XEQ_EQIO_BITS_A2_DATA        32
#define XEQ_EQIO_ADDR_BAND_DATA      0x38
#define XEQ_EQIO_BITS_BAND_DATA      16
#define XEQ_EQIO_ADDR_SAMPLEIN_DATA  0x40
#define XEQ_EQIO_BITS_SAMPLEIN_DATA  16
#define XEQ_EQIO_ADDR_SAMPLEOUT_DATA 0x48
#define XEQ_EQIO_BITS_SAMPLEOUT_DATA 16
#define XEQ_EQIO_ADDR_SAMPLEOUT_CTRL 0x4c

