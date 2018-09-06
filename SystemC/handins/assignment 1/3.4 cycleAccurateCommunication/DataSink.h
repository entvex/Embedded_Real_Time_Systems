/*
 * DataSink.h
 *
 *  Created on: Sep 5, 2018
 *      Author: tihsc
 */

#ifndef DATASINK_H_
#define DATASINK_H_
#include <systemc.h>
#include <iostream>
#include "config.h"

SC_MODULE(DataSink){

	//sc_out<bool> ready;
	//sc_in_clk CLK;

	sc_in<bool> vaild;
	//sc_in<sc_int<DATA_BITS>> data;
	//sc_in<sc_int<ERROR_BITS>> error;
	//sc_port<sc_int<DATA_BITS>,0> channel;

	void sink_thread(void) {
		while(true)
		{
			while (1) {
				std::cout << "data: " << vaild->read() << std::endl;
			}
		}
	}

	SC_CTOR (DataSink) {
		SC_THREAD(sink_thread)
	}
};


#endif /* DATASINK_H_ */
