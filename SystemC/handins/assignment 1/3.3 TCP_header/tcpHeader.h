/*
 * tcpHeader.h
 *
 *  Created on: Aug 30, 2018
 *      Author: tihsc
 */
#ifndef TCPHEADER_H_
#define TCPHEADER_H_
#include "stdafx.h"
#include <systemc.h>
#include "Header.h"

#define PACKET_SIZE 512
#define DATA_SIZE   (PACKET_SIZE-20)
typedef struct
{
sc_uint<16> SourcePort;
sc_uint<16> DestinationPort;
sc_uint<32> SequenceNumber;
sc_uint<32> Acknowledge;
sc_uint<16> StatusBits;
sc_uint<16> WindowSize;
sc_uint<16> Checksum;
sc_uint<16> UrgentPointer;
char Data[DATA_SIZE];
} TCPHeader;

#endif /* TCPHEADER_H_ */
